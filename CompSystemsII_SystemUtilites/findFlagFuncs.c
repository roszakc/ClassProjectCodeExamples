/*  Corben Roszak
 *  CSCI 347
 *  Find Project 3
 *  3.1
 */

#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <dirent.h>
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <fts.h>
#include <time.h>
#include "list.h"
#include "find.h"

/* Array of names of flags that are valid
 */
const char *flagNames[8] = {"-cmin", "-cnewer", "-ctime",
                            "-mmin", "-mtime", "-type", "-exec"};

/* Function pointer array for flag functions
 */
const void *flagMacros[8] = {cmin, cnewer, ctim, mmin, mtim, type, exec};

/* Append flag function
 */
void append_flag(char *name, void *arg, flags **start){
  assert(start != NULL);
  while(*start != NULL){
    start = &((*start)->next);
  }
  *start = createNode_flag(name, arg);
}

/* Parse char* type argument into a long data type
 *  and checks that argument is a valid number
 *
 * Exits if argument is invalid (not a number)
 */
long parseArgInt(char *arg){
  char *pt;
  long timeElapsed = strtol(arg, &pt, 10);
  if(pt == arg || *pt != '\0'){
    printf("parseArgInt: Invalid argument: %s \n", arg);
    exit(EXIT_FAILURE);
  }
  return timeElapsed;
}

/* Get the index to the flagMacros array which holds the proper functions
 *  for the flag indicated.
 *
 * Exits program if flag name is invalid
 */
int getFlagMacroIndex(char *flagName){
  int i = 0;
  int s = -1;
  while(i < MAXFLAGS && (s = strcoll(flagName, flagNames[i])) != 0){
    i++;
  }
  if(i == MAXFLAGS){
    printf("createNode_flag: Invalid flag name: %s \n", flagName);
    exit(EXIT_FAILURE);
  }
  return i;
}

/* Creates a flags node that is populated with:
 *   str = flags name
 *   arg = arg parsed to proper type required by the flag
 *   flagFunc = the function indicated by the flag (from flagMacros[])
 *   freeListFunc = the function needed to delete the list
 *
 * Exits if when the cnewer argument is invalid (bad file name)
 */
flags* createNode_flag(char *flagName, void *arg){
  flags *newNode = malloc(sizeof(struct FlagFuncList));
  newNode->str = flagName;
  newNode->next = NULL;
  int i = getFlagMacroIndex(flagName);
  if(strcoll(CNEWER, flagNames[i]) == 0){
    struct stat targetFile;
    if(stat(arg, &targetFile)){
      printf("createNode_flag: stat failed on file: %s \n", (char*)arg);
      exit(EXIT_FAILURE);
    }
    newNode->arg = (time_t*) targetFile.st_mtim.tv_sec;
    newNode->flagFunc = flagMacros[i];
    newNode->freeListFunc = freeNonDynamicFlagList;
  } else if(strcoll(TYPE, flagNames[i]) == 0){
    newNode->arg = strdup(arg);
    newNode->flagFunc = flagMacros[i];
    newNode->freeListFunc = freeDynamicFlagList;
  } else if(strcoll(EXEC, flagNames[i]) == 0){
    newNode->arg = arg;
    newNode->flagFunc = flagMacros[i];
    newNode->freeListFunc = freeDynamicFlagList;
  }else{
    newNode->arg = (long*) parseArgInt(arg);
    newNode->flagFunc = flagMacros[i];
    newNode->freeListFunc = freeNonDynamicFlagList;
  }
  return newNode;
}

/* function to intersect the flaglist files and the total files parsed
 */
void intersectFlags(flags **flagList, node **fileNames){
  while(*flagList != NULL){
    *fileNames = intersection(fileNames, &((*flagList)->flagFiles));
    flagList = &((*flagList)->next);
  }
}

void freeNonDynamicFlagList(flags *start){
  free(start->str);
  freeList(start->flagFiles);
  free(start);
}

void freeDynamicFlagList(flags *start){
  free(start->str);
  free(start->arg);
  freeList(start->flagFiles);
  free(start);
}

/* Substitutes the "{}" characters for a given name
 * Note: Used by exec function
 */
char** substituteFileName(char **args, char *name){
  char **head = args;
  while(*args && strcoll("{}", *args) != 0){
    *args++;
  }
  if(*args == NULL){
    printf("substituteFileName: '{}' expected. \n");
    exit(EXIT_FAILURE);
  }
  *args = name;
  return head;
}

/* Checks exit status of child process
 * Appends to flaglist if child exit status returned true
 */
void checkExitStatus(FTSENT *file, int status, node **flagFiles){
  if(WIFEXITED(status)){
    if(WEXITSTATUS(status) == 0){
      append(strdup(file->fts_path), flagFiles);
    }
  }
}

/* Exec starts a child process of the given function type
 */
 void exec(FTSENT *file, void *commandArgs, node **flagFiles){
   node *execArgsList = (node*) commandArgs;
   if(listLength(&execArgsList) < 1){
     printf("Exec: Too few arguments \n");
     exit(EXIT_FAILURE);
   }
   char *funcName = execArgsList->str;
   char **argArray = toArray(&execArgsList);
   char **argArrToExec = substituteFileName(argArray, strdup(file->fts_name));
   int status;
   pid_t child = fork();
   if(child == -1){
     printf("Exec: fork error \n");
     exit(EXIT_FAILURE);
   }
   if(child == 0){
     execvp(funcName, argArrToExec);
     exit(status);
   } else {
     int childRet = wait(&status);
     if(childRet == -1){
       printf("Exec: wait error \n");
       exit(EXIT_FAILURE);
     }
     checkExitStatus(file, status, flagFiles);
   }
 }

/* Compares modification time of selected file against current file
 */
void cnewer(FTSENT *file, void *selectedFileTime, node **flagFiles){
  struct timespec currentFileTime = file->fts_statp->st_mtim;
  if(currentFileTime.tv_sec > (time_t) selectedFileTime){
    append(strdup(file->fts_path), flagFiles);
  }
}

/* Times are compared in days, converted from seconds.
 *  Rounded to next full day.
 */
void ctim(FTSENT *file, void *numDays, node **flagFiles){
  struct timespec currentFileTime = file->fts_statp->st_ctim;
  long fileTime = ((long) startTime.tv_sec -
                   (long) currentFileTime.tv_sec) / 86400;
  if(fileTime == (long) numDays){
    append(strdup(file->fts_path), flagFiles);
  }
}

/* Times are compared in days, converted from seconds.
 *  Rounded to next full day.
 */
void mtim(FTSENT *file, void *numDays, node **flagFiles){
  struct timespec currentFileTime = file->fts_statp->st_mtim;
  long fileTime = ((long) startTime.tv_sec -
                   (long) currentFileTime.tv_sec) / 86400;
  if(fileTime == (long) numDays){
    append(strdup(file->fts_path), flagFiles);
  }
}

/* Times are compared in minutes, converted from seconds. Rounded up to
 *  the next full minute.
 */
void cmin(FTSENT *file, void *numMin, node **flagFiles){
  struct timespec fileTime = file->fts_statp->st_ctim;
  long startMin = ((long) startTime.tv_sec) / 60;
  long fileMin = ((long) fileTime.tv_sec) / 60;
  if((startMin - fileMin)+1 == (long)numMin){
    append(strdup(file->fts_path), flagFiles);
  }
}

/* Times are compared in minutes, converted from seconds. Rounded up to
 *  the next full minute.
 */
void mmin(FTSENT *file, void *numMin, node **flagFiles){
  struct timespec fileTime = file->fts_statp->st_mtim;
  long startMin = ((long) startTime.tv_sec) / 60;
  long fileMin = ((long) fileTime.tv_sec) / 60;
  if((startMin - fileMin)+1 == (long)numMin){
    append(strdup(file->fts_path), flagFiles);
  }
}

/* Identify file type from given mode
 */
char* typeCheck(mode_t mode){
  mode_t modes[8] = {S_IFLNK, S_IFDIR, S_IFBLK,
                     S_IFCHR, S_IFIFO, S_IFSOCK, S_IFREG};
  char *type[9] = {"l", "d", "b", "c", "p", "s", "f", "?"};
  int i = 0;
  while(i < 9 && modes[i] != (mode&S_IFMT)){
    i++;
  }
  return type[i];
}
/* Gets the file type from helper fuction and compares
 *  against the given arg
 */
void type(FTSENT *file, void *targetType, node **flagFiles){
  char *ret = typeCheck(file->fts_statp->st_mode);
  if(strcoll((char*)targetType, ret) == 0){
    append(strdup(file->fts_path), flagFiles);
  }
}

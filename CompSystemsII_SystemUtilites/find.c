/*  Corben Roszak
 *  CSCI 347
 *  Find Project 3
 *  3.2
 */
#include <stdlib.h>
#include <sys/types.h>
#include <dirent.h>
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fts.h>
#include <sys/stat.h>
#include <errno.h>
#include <sys/wait.h>
#include <time.h>
#include "list.h"
#include "find.h"


/* Frees each flag node using their own destroy function
 */
void destroyFlagList(flags *flagList){
  while(flagList != NULL){
    flags *next = flagList->next;
    flagList->freeListFunc(flagList);
    flagList = next;
  }
}

/* Reads file stream and preforms find and flags functionality
 *
 * Note: Only visits files in pre order
 */
void readFileStream(FTS *fileStream, node **fileNames, flags **flagList){
  FTSENT *file = NULL;
  while((file = fts_read(fileStream)) != NULL){
    if(file->fts_info != FTS_DP){
      append(strdup(file->fts_path), fileNames);
      flags *head = *flagList;
      while(head != NULL){
        head->flagFunc(file, head->arg, &head->flagFiles);
        head = head->next;
      }
    }
  }
}

/* Searches file hierarchy of given file
 *
 * If a flag is parsed, the flags will intersect the main list of names
 *  to only leave the file names that are selected by the given flags.
 *
 * Exits if the given file/directory to start find at is invalid
 *
 * Prints file names in lexical order
 */
void find(char* pathNames[], flags *flagList){
  node *fileNames = NULL;
  void(*printFunc) = &puts;
  FTS *fileStream = NULL;
  fileStream = fts_open(pathNames, FTS_COMFOLLOW, NULL);
  if(fileStream == NULL){
    printf("find: fts_open invalid file: %s \n", pathNames[0]);
    exit(EXIT_FAILURE);
  } else{
    readFileStream(fileStream, &fileNames, &flagList);
  }
  intersectFlags(&flagList, &fileNames);
  fts_close(fileStream);
  sortList(fileNames);
  listForEach(&fileNames, printFunc);
  freeList(fileNames);
  destroyFlagList(flagList);
}

/* Parse flags that have arguments terminated by a ';'
 */
int parseExecFlag(flags **flagList, int i, int argc, char *argv[]){
  node *argumentsToExec = NULL;
  i++;
  while(i < argc && strcoll(argv[i], ";") != 0){
    append(strdup(argv[i]), &argumentsToExec);
    i++;
  }
  if(i == argc){
    printf("parseExecFlag: no command terminator \n");
    exit(EXIT_FAILURE);
  }
  append_flag(strdup(EXEC), argumentsToExec, flagList);
  return i+=1;
}

/* Parse flags that have only one argument
 */
int parseFlag(flags **flagList, int i, int argc, char *argv[]){
  if(i+1 < argc){
    append_flag(strdup(argv[i]), strdup(argv[i+1]), flagList);
  }
    return i+=2;
}

/* Parse flags from command line
 *
 * Exits if the number of arguments parsed was less then expected
 */
 flags* getFlags(int argc, char *argv[]){
   flags *flagList = NULL;
   int i = 2;
   while(i < argc){
     if(strcoll(EXEC, argv[i]) == 0){
       i = parseExecFlag(&flagList, i, argc, argv);
     } else {
       i = parseFlag(&flagList, i, argc, argv);
     }
   }
   if(i != argc){
     printf("getFlags: too few arguments \n");
     exit(EXIT_FAILURE);
   }
   return flagList;
 }

/* Lists all items that are in the given file/directory heirarchy
 * The file to start find is stored in a single array to be passed
 *  into fts_open in the find function.
 *
 * Marks the start time for find for use with certain flags
 */
int main(int argc, char* argv[]){
  clock_gettime(CLOCK_REALTIME, &startTime);
  if(argc < 2){
    printf("Main: too few arguments \n");
    exit(EXIT_FAILURE);
  }
  char* file[2] = {strdup(argv[1])};
  flags *flagList = getFlags(argc, argv);
  find(file, flagList);
  return 0;
}

/*  Corben Roszak
 *  CSCI 347
 *  LS program 3
 *  3.4
 */
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <dirent.h>
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <termios.h>
#include <sys/ioctl.h>
#include <pwd.h>
#include <grp.h>
#include <time.h>
#include "list.h"

/* Flags for ls
 */
int allFilesFlag = 0;
int longFormFlag = 0;
int dirFlag = 0;
int inodeFlag = 0;
int columnWidth = -1;
int numProcessedDir = 0;
int numProcessedFiles = 0;

/* Gets the type of a file
* Input: mode of a file
* Output: single letter of corresponding file type
*/
char* getType(mode_t mode){
  mode_t fileType[8] = {S_IFLNK, S_IFDIR, S_IFBLK,
                        S_IFCHR, S_IFIFO, S_IFSOCK, S_IFREG};
  char *typeChar[9] = {"l", "d", "b", "c", "p", "s", "-", "?"};
  int i = 0;
  while(i < 8 && fileType[i] != (mode&S_IFMT)){
    i++;
  }
  return typeChar[i];
}

/* Helper function for "printLongForm" to create permission bits string
 * Input: mode field of a file's stat structure
 * Output: permission bits string
 */
char* buildPermissionString(mode_t mode){
  char *flagBits = malloc(sizeof(char[11]));
  strcpy(flagBits, getType(mode));
  char *permissions[5] = {"r", "w", "x"};
  mode_t fileModes[10] = {S_IRUSR, S_IWUSR, S_IXUSR,
                          S_IRGRP, S_IWGRP, S_IXGRP,
                          S_IROTH, S_IWOTH, S_IXOTH};
  int i = 0;
  while(i < 9){
    if(fileModes[i]&mode){
      strcat(flagBits, permissions[i%3]);
    } else{
      strcat(flagBits, "-");
    }
    i++;
  }
  return flagBits;
}
/* Function to get the format string for printing in columns
 *
 * Note: size reserved for the strings are much larger then needed.
 */
char* getFormatString(char* fileName){
  char *printFormatString = malloc(sizeof(char[columnWidth]));
  char *columnWidthStr = malloc(sizeof(char[columnWidth]));
  sprintf(columnWidthStr, "%d", (columnWidth));
  strcpy(printFormatString, "%-");
  strcat(printFormatString, columnWidthStr);
  strcat(printFormatString, "s");
  free(columnWidthStr);
  return printFormatString;
}

/* function to print names of files
 * Input: name of file to be printed
 * Output: void
 */
void print(char *fileName){
  char* printFormatString;
  if(inodeFlag){
    char *fullPrintName = malloc(columnWidth);
    struct stat fileStats;
    if(stat(fileName, &fileStats)){
      printf("Print: stat error for file: %s \n", fileName);
      exit(EXIT_FAILURE);
    }
    printFormatString = getFormatString(fileName);
    sprintf(fullPrintName, "%-10ld %s", fileStats.st_ino, fileName);
    printf(printFormatString, fullPrintName);
    free(fullPrintName);
  } else {
    printFormatString = getFormatString(fileName);
    printf(printFormatString, fileName);
  }
  free(printFormatString);
}

/* function to print the long form of a file
 * Input: name of file to be printed
 * Output: void
 *
 */
void printLongForm(char *fileName){
  struct stat fileStats;
  struct passwd *pwd;
  struct group *grp;
  long int links;
  char *permissionString;
  char *usrName = "[]";
  char *groupName = "[]";
  long fileSize;
  char timeString[255];
  if(stat(fileName, &fileStats)){
    printf("printLongForm: stat error for file: %s \n", fileName);
    exit(EXIT_FAILURE);
  }
  links = (long) fileStats.st_nlink;
  if((pwd = getpwuid(fileStats.st_uid)) != NULL){
    usrName = pwd->pw_name;
  }
  if((grp = getgrgid(fileStats.st_gid)) != NULL){
    groupName = grp->gr_name;
  }
  fileSize = fileStats.st_size;
  strftime(timeString, sizeof(timeString),
            "%b %e %H:%M", localtime(&fileStats.st_mtime));

  if(inodeFlag){
    printf("%-10ld ", fileStats.st_ino);
  }
  permissionString = buildPermissionString(fileStats.st_mode);
  printf("%s %ld %s %s %7ld %s %s \n", permissionString,
                                      links, usrName, groupName,
                                      fileSize, timeString, fileName);
  free(permissionString);
}

/* print to a tty device without column formatting
 */
void ttyDevicePrint(node **start, void(*act)(char* str)){
  while(*start != NULL){
    act((*start)->str);
    printf("\n");
    start = &((*start)->next);
  }
}

/* Prints to standard out with formatted columns
 *
 * Note: extra statment at end of loop for formatting
 */
void nonTtyDevicePrint(node **start, void(*act)(char* str), int maxCols){
  int i = 1;
  while(*start != NULL){
    act((*start)->str);
    if(i % maxCols == 0){
      printf("\n");
    }
    i++;
    start = &((*start)->next);
  }
  if((i-1) % maxCols != 0){
    printf("\n");
  }
}

/* Print func for getting window size and formatting columns for Output
 *  devices.
 */
void listForEachPrint(node **start, void(*act)(char* str)){
  struct winsize winSt;
  int ret = ioctl(STDOUT_FILENO, TIOCGWINSZ, &winSt);
  if(ret != -1){
    int maxCols = (winSt.ws_col / columnWidth);
    nonTtyDevicePrint(start, act, maxCols);
  } else {
    ttyDevicePrint(start, act);
  }
}


/* Column width is the size of the longest name
 * Note: includes inode length if flag is set
 *       and accounts for extra space in name
 */
void setPrintStandards(node **start){
  while(*start != NULL){
    int length  = strlen((*start)->str)+1;
    if(length > columnWidth){
      columnWidth = length;
    }
    start = &((*start)->next);
  }
  if(columnWidth == -1){
    printf("setPrintStandards: No column width set\n");
    exit(EXIT_FAILURE);
  }
  if(inodeFlag){
    columnWidth += 12;
  }
}

/* Lists files in current directory.
 */
void list(DIR* dir){
  assert(dir != NULL);
  void(*printFunc) = &print;
  void(*listFunc)(node**start, void(*act)(char*name)) = &listForEachPrint;
  struct dirent* read_dir = readdir(dir);
  node* start = NULL;
  while(read_dir != NULL){
    if(!allFilesFlag && (char)read_dir->d_name[0] != '.') {
      append(strdup(read_dir->d_name), &start);
    } else if(allFilesFlag) {
      append(strdup(read_dir->d_name), &start);
    }
    read_dir = readdir(dir);
  }
  if(longFormFlag){
    printFunc = &printLongForm;
    listFunc = &listForEach;
  }
  sortList(start);
  setPrintStandards(&start);
  listFunc(&start, printFunc);
  freeList(start);
}

/* Parse flags from input
 * Output: sets global flags
 *
 */
void getFlags(int argc, char *argv[]){
  char c = getopt(argc, argv, "dial");
  while (c != -1){
    switch(c){
      case 'a':
        allFilesFlag = 1;
        break;
      case 'l':
        longFormFlag = 1;
        break;
      case 'i':
        inodeFlag = 1;
        break;
      case 'd':
        dirFlag = 1;
        break;
    }
    c = getopt(argc, argv, "dial");
  }
}

/* Checks if command arg is a valid directory to preform ls on.
 * Opens the directory and changes to that directory
 *
 * Note: Checks that argument isn't a flag (start with '-')
 */
int parseCommandLine(node **dirList, node **fileList, int argc, char *argv[]){
  int i = 1;
  int err = 0;
  struct stat fileStats;
  while(i < argc){
    char c = argv[i][0];
    if((stat(strdup(argv[i]), &fileStats) && c != '-') || strcoll(argv[i], "-") == 0){
      printf("Cannot access '%s': No such file or directory \n", argv[i]);
      err = 1;
    } else if(c != '-'){
      if(strcoll(getType(fileStats.st_mode), "d") == 0 && dirFlag == 0){
        append(strdup(argv[i]), dirList);
      } else{
        append(strdup(argv[i]), fileList);
      }
    }
    i++;
  }
  return err;
}

/* ls on current directory
 */
void ls(char *name){
  DIR *directory = opendir(name);
  list(directory);
  closedir(directory);
}

/* Prints files using appropriate print function
 *
 * Note: Extra statment is for formatting
 */
void lsOnFiles(node **fileList){
  if(*fileList != NULL){
    setPrintStandards(fileList);
    if(longFormFlag){
      listForEach(fileList, &printLongForm);
    } else {
      listForEachPrint(fileList, &print);
    }
    if(dirFlag == 0 && numProcessedDir > 0){
      printf("\n");
    }
  }
}

/* Opens directory and changes to that directory to preform ls
 * Changes back to original directory before continuing
 *
 * Note: to be used only when there are multiple directories
 *    passed from command line
 */
void lsOnDir(node **dirList){
  if(listLength(dirList) == 1){
    ls((*dirList)->str);
  } else {
    while(*dirList != NULL){
      DIR* directory = NULL;
      directory = opendir((*dirList)->str);
      if(directory != NULL){
        char *curDirName = NULL;
        curDirName = getcwd(curDirName, PATH_MAX);
        int ch = chdir((*dirList)->str);
        if(ch == -1){
          perror("chdir");
          exit(EXIT_FAILURE);
        }
        printf("%s: \n", (*dirList)->str);
        list(directory);
        ch = chdir(curDirName);
        if(ch == -1){
          perror("chdir");
          exit(EXIT_FAILURE);
        }
        free(curDirName);
      }
      closedir(directory);
      dirList = &((*dirList)->next);
      if(*dirList != NULL){
        printf("\n");
      }
    }
  }
}

/* Lists all items in current directory.
 *
 * Note: has checks for no arguments and special -d flag case
 */
int main(int argc, char* argv[]){
  getFlags(argc, argv);
  node *dirList = NULL;
  node *fileList = NULL;
  int parseErr = parseCommandLine(&dirList, &fileList, argc, argv);
  numProcessedFiles = listLength(&fileList);
  numProcessedDir = listLength(&dirList);
  lsOnFiles(&fileList);
  lsOnDir(&dirList);
  int processedLists = numProcessedFiles + numProcessedDir;
  if(processedLists == 0 && parseErr){
    exit(EXIT_FAILURE);
  }
  if(processedLists == 0 && dirFlag == 0){
    ls(".");
  } else if(processedLists == 0 && dirFlag == 1) {
    append(".", &fileList);
    lsOnFiles(&fileList);
  }
  return 0;
}

/*  Corben Roszak
 *  CSCI 347
 *  Find Project 3
 *  3.0
 */
#if !defined (_48b29344_ede8_428a_bc1d_85cfa28b8fd9)
#define _48b29344_ede8_428a_bc1d_85cfa28b8fd9

/* Typedef structure for the flags
 *
 * void pointer to the argument that corresponds to the flag
 * function pointer to the function that corresponds to the flag
 * function pointer to the function that will delete the node
 *     Depending on how the arguments are allocated
 *
 * linked list of names that the function for the flag has returned true on
 */
typedef struct FlagFuncList{
  char *str;
  void *arg;
  void(*flagFunc)(FTSENT *file, void *arg, node **fileNames);
  void(*freeListFunc)(struct FlagFuncList *start);
  node* flagFiles;
  struct FlagFuncList *next;
}flags;

#define TYPE "-type"
#define CNEWER "-cnewer"
#define EXEC "-exec"
#define MAXFLAGS 7

#include <time.h>
/* Start time set from main of find.c
 * Used by ctim/mtim and cmin/mmin
 */
struct timespec startTime;

/* Function that appends a node to a given linked list
 *  Input: char flag name, char arg, linked list node
 *  Output: void
 */
void append_flag(char *str, void *arg, flags **start);

/* Function that intersects the files picked by the flags and the full
 *  list of files, leaving only the relevant files to be printed.
 *
 * Input: list of flags, list of filenames
 * Output: void
 */
void intersectFlags(flags **flagList, node **fileNames);

/*  Function to free flags linked list struct
 *   that are not dynamically allocated
 *  Input: linked list to be freed
 *  Output: void
 */
void freeNonDynamicFlagList(flags *start);

/*  Function to free flags linked list struct that are dynamically allocated
 *  Input: linked list to be freed
 *  Output: void
 */
void freeDynamicFlagList(flags *start);

/* Function that allocates and fills a new node to be appended
 *  Input: char flag name, void argument
 *  Output: flag type node
 */
flags* createNode_flag(char *flagName, void *arg);

/* Exec function creates a child process with the command specified in
 *  the commandArgs argument.
 * Input: FTSENT file structure, void argument, Linked list of filenames
 */
void exec(FTSENT *file, void *commandArgs, node **fileNames);

/* Appends pathname if file has a more recent last change
 *  time than selected file
 *  Input: FTSENT file structure, void argument, linked list of filenames
 */
void cnewer(FTSENT *file, void *selectedFileTime, node **fileNames);

/* Appends pathname if the difference between the time of last change of
 *  file status information and the time find was started, rounded to full
 *  minutes
 *  Input: FTSENT file structure, void argument, linked list of filenames
 */
void cmin(FTSENT *file, void *numMin, node **fileNames);

/* Appends pathname if the difference between the time of last change of
 *  file status information and the time find was started, rounded to 24-hour
 *  periods
 *  Input: FTSENT file structure, void argument, linked list of filenames
 */
void ctim(FTSENT *file, void *numDays, node **fileNames);

/* Appends pathname  if the difference between the file last modification time
 *  and the time find was started, rounded to full minutes
 *  Input: FTSENT file structure, void argument, linked list of filenames
 */
void mmin(FTSENT *file, void *numMin, node **fileNames);

/* Appends pathname  if the difference between the file last modification time
 *  and the time find was started, rounded to 24-hour periods
 *  Input: FTSENT file structure, void argument, linked list of filenames
 */
void mtim(FTSENT *file, void *numDays, node **fileNames);

/* Appends pathname if file is the specified type
 *  Input: FTSENT file structure, void argument, linked list of filenames
 */
void type(FTSENT *file, void *targetType, node **fileNames);

#endif //_48b29344_ede8_428a_bc1d_85cfa28b8fd9

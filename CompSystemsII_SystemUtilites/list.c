/*  Corben Roszak
 *  CSCI 347
 *  LS program 3
 *  3.0
 */
 #include <stdlib.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <dirent.h>
 #include <assert.h>
 #include <stdio.h>
 #include <string.h>
 #include <unistd.h>
 #include <pwd.h>
 #include <grp.h>
 #include <time.h>
 #include "list.h"

void append(char *name,  node **start){
  assert(start != NULL);
  while(*start != NULL){
    start = &((*start)->next);
  }
  *start = createNode(name);
}

node* createNode(char *name){
  node *newNode = malloc(sizeof(struct Node));
  newNode->str = name;
  newNode->next = NULL;
  return newNode;
}

/* Search to see if a str exists in a given linked list
 * Returns the node that was found
 */
node* search(node **head, char *str){
  node* ret = NULL;
  while(*head != NULL){
    if(strcoll(str, (*head)->str) == 0){
      ret = (*head);
    }
    head = &((*head)->next);
  }
  return ret;
}

node* intersection(node **headOne, node **headTwo){
  node *result = NULL;
  while(*headOne != NULL){
    if(search(headTwo, (*headOne)->str) != NULL){
      append(strdup((*headOne)->str), &result);
    }
    headOne = &((*headOne)->next);
  }
  return result;
}


void freeList(node *start){
  while(start != NULL){
    node* next = start->next;
    free(start->str);
    free(start);
    start = next;
  }
}

void swapNodes(node *current, node *tempNode){
  char* tempNameCopy = current->str;
  current->str = tempNode->str;
  tempNode->str = tempNameCopy;
}

//Preform bubble sort on linked list
void sortList(node *start){
  while(start != NULL){
    node *tempNode = start->next;
    while(tempNode != NULL){
      if(strcoll(start->str, tempNode->str) > 0 ){
        swapNodes(tempNode, start);
      }
      tempNode = tempNode->next;
    }
    start = start->next;
  }
}

void listForEach(node **start, void(*act)(char* str)){
  assert(start != NULL);
  while(*start != NULL){
    act((*start)->str);
    start = &((*start)->next);
  }
}

int listLength(node **start){
  int i = 0;
  while(*start != NULL){
    i++;
    start = &((*start)->next);
  }
  return i;
}
/* Converts a linked list of char* to an array of char*
 * Note: Adds a NULL at the end of the array for use with EXECVP
 */
char** toArray(node **start){
  int length = listLength(start);
  char **retArray = malloc(sizeof(char*) * (length+1));
  int i = 0;
  while(*start != NULL){
    retArray[i] = malloc(sizeof(char) * strlen((*start)->str));
    strcpy(retArray[i], strdup((*start)->str));
    start = &((*start)->next);
    i++;
  }
  retArray[i] = NULL;
  return retArray;
}

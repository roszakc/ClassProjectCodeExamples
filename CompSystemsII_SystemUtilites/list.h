/*  Corben Roszak
 *  CSCI 347
 *  LS program 3
 *  3.0
 */

#if !defined (_38b29344_ede8_428a_bc1d_85cfa28b8fd9)
#define _38b29344_ede8_428a_bc1d_85cfa28b8fd9

/* Typedef stuct for the linked lists
 *
 */
typedef struct Node{
  char* str;
  struct Node* next;
}node;

/* Function that appends a node to a given linked list
 *  Input: char string, linked list node
 *  Output: void
 */
void append(char *str, node **start);

/* Function that allocates and fills a new node to be appended
 *  Input: char string
 *  Output: node
 */
node* createNode(char *str);

/* Intersects two linked lists
 *  Input: two linked lists
 *  Output: new intersected list
 */
node* intersection(node **headOne, node **headTwo);

/*  Function to free space from malloc-ed linked list
 *  Input: linked list to be freed
 *  Output: void
 */
 void freeList(node *start);

/* Function to sort a linked list of nodes based on lexical analysis. Uses
 *    bubble sort.
 * Input: linked list nodes
 * Output: void
 */
void sortList(node *start);

/* To array function turns a linked list structure to an array structure.
 * Input: linked list structure
 * Output: array of strings
 */
char** toArray(node **start);

 /* for each iterator of a list
  * Input: linked list node, function pointer which takes a string
  * Output: void
  *
  */
void listForEach(node** start, void(*act)(char* str));

/* Find the length of the given list
 * Input: linked list
 * Output: int length of the list
 */
int listLength(node **start);

#endif //_38b29344_ede8_428a_bc1d_85cfa28b8fd9

#include "hash.h"
#include <stdint.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>


/* Types */

typedef struct bucket_st{
  void*  key;
  size_t keysz;
  void*  value;
} bucket;

struct ht_st {
  size_t     size;
  size_t     load;
  keycomp    comp;
  keyvalfree kvfree;
  bucket    *table;
};

/* Constants */
#define MINSIZE 32


/* Create a new hashtable
 *
 * If the size is zero, then the table pointer is NULL.  
 */
hashtable htnew(size_t size, keycomp comp, keyvalfree kvfree) {
  assert (comp != NULL);

  hashtable ht = malloc(sizeof(struct ht_st));
  
  if(ht != NULL) {
    ht->size   = size;
    ht->load   = 0;
    ht->comp   = comp;
    ht->kvfree = kvfree;
    ht->table  = ( ht->size > 0
                   ? calloc (size, sizeof(bucket))
                   : NULL );
  }

  if(ht != NULL && ht->size > 0 && ht->table == NULL) {
    free(ht);
    ht = NULL;
  }
  
  return ht;
}

/* Destroy the hash table
 *
 * Note that without a kvFree function, the loop over the buckets is
 * unnecessary. 
 */
void htfree(hashtable ht) {
  if(ht != NULL) {

    if(ht->kvfree != NULL) {
      for(size_t i = 0; i < ht->size; ++i) {
        if(ht->table[i].key != NULL)
          ht->kvfree(ht->table[i].key, ht->table[i].value);
      }
    }
        
    free(ht->table);
    free(ht);
  }
}


/* Return key at index in hashtable
 *
 * Note: should only be used to dump tables contents
 */
char* htGetVal(hashtable ht, int i){
    return ht->table[i].key;
}


/* CRC32
 *
 * This is a simple, unoptimized, cyclic-redundancy-check.  Notice the
 * right-shift of crc in the loop.  This follows ethernet's interpretation of
 * bit-ordering.  
 *
 */
static 
uint32_t htcrc32(void* buf, size_t len) {

  static const uint32_t POLY[2] = {0xEDB88320,0};

  uint32_t crc = 0xFFFFFFFF;

  const uint8_t* data = buf;
  const uint8_t* end  = data + len;

  while (data < end) {
    crc = crc ^ (*data);
    for (int bit = 0; bit < 8; ++bit) {
      crc = (crc >> 1) ^ POLY[!(crc&1)];
    }
    data++;
  }

  return ~crc;
}


/* Grow the table
 * 
 * This function is called from htinsert, but it uses htinsert.  Notice that the
 * new, empty table is created first.  The call back to htinsert will not call
 * htgrow, since there is space available. 
 */
static
bool htgrow(hashtable ht) {
  
  size_t  oldsize  = ht->size;
  bucket* oldtable = ht->table;

  ht->size = ( ht->size> 0
               ? ht->size*2
               : MINSIZE );
  assert(ht->size > oldsize);
  ht->table = calloc(ht->size, sizeof(bucket));
  
  if(ht->table != NULL) {
    ht->load = 0;
    for(int i = 0; i < oldsize; ++i) {
      if(oldtable[i].key != NULL) {
        htinsert(ht, oldtable[i].key, oldtable[i].keysz,  oldtable[i].value);
      }
    }
    free(oldtable);
  }
  else {
    ht->table = oldtable;
    ht->size = oldsize;
  }
  
  return oldsize < ht->size;
}

/* Insert a new key-value pair.
 *
 * Note the guard expression.  The new key-value will be added if the
 * load-factor is below 2/3 or the grow operations succeeded.  
 */  
bool htinsert(hashtable ht, void* key, size_t keysz, void* value) {
  assert(ht != NULL && key != NULL);

  size_t oldload = ht->load;
  if(ht->load < ht->size * 0.66 || htgrow(ht)) {

    size_t i = htcrc32(key, keysz) % ht->size;
    while(ht->table[i].key != NULL)
      i = (i + 1) % ht->size;

    ht->table[i].key   = key;
    ht->table[i].keysz = keysz;
    ht->table[i].value = value;
    ht->load ++;
  }
  
  return ht->load > oldload;;  
}
bool htstrinsert(hashtable ht, char* key, void* value) {
  return htinsert(ht, key, strlen(key), value);
}

/* Find the bucket's index
 *
 * This is used by htfind and hthaskey.  This is the interesting work of finding
 * the bucket with the specified key.  
 */
static
size_t htbucket(hashtable ht, void* key, size_t keysz) {
  
  size_t i = htcrc32(key, keysz) % ht->size;

  while(ht->table[i].key != NULL &&
        0 != ht->comp(ht->table[i].key, key)) {
    i = (i + 1) % ht->size;
  }
  
  return ( ht->table[i].key != NULL
           ? i
           : ht->size );
}

/* Find
 *
 */
void* htfind(hashtable ht, void* key, size_t keysz) {
  assert(ht != NULL);

  size_t i = htbucket(ht, key, keysz);
  return ( i != ht->size
           ? ht->table[i].value
           : NULL );
}
void* htstrfind(hashtable ht, char* key) {
  return htfind(ht, key, strlen(key));
}


/* Has Key
 *
 */
bool hthaskey(hashtable ht, void* key, size_t keysz) {
  assert(ht != NULL);

  size_t i = htbucket(ht, key, keysz);
  return i != ht->size;
}

bool hthasstrkey(hashtable ht, char* key) {
  return hthaskey(ht, key, strlen(key));
}


void htPrintMac(int fd, hashtable ht){
    int i = 0;
    int count = 0;
    int htSize = ht->size;
    while (i < htSize) {
        unsigned char *msg = (unsigned char *) htGetVal(ht, i);
        if (msg != NULL) {
            dprintf(fd, "Mac: %02x", msg[0]);
            for (int j = 1; j < 6; j++) {
                dprintf(fd, ":%02x", msg[j]);
            }
            dprintf(fd, "\n");
            count++;
        }
        i++;
    }
    dprintf(fd, "\nMac addresses recorded: %d \n", count);
}

void htPrintBlk(int fd, hashtable ht){
    int i = 0;
    int count = 0;
    int htSize = ht->size;
    while (i < htSize) {
        unsigned char *msg = (unsigned char *) htGetVal(ht, i);
        if (msg != NULL) {
            dprintf(fd, "IP: %02x", msg[0]);
            for (int j = 1; j < 16; j++) {
                dprintf(fd, "%02x", msg[j]);
            }
            dprintf(fd, "\n");
            count++;
        }
        i++;
    }
    dprintf(fd, "\nIP addresses recorded: %d \n", count);
}

bool isNotEmpty(hashtable ht){
    bool empty = false;
    int i = 0;
    while(i < ht->size && ((unsigned char *)htGetVal(ht, i) == NULL)){
        i++;
    }
    if (i < ht->size){
        empty = true;
    }
    return empty;
}


bool htGetRandom(hashtable ht, unsigned char baddie[16]){
    bool send = false;
    if (isNotEmpty(ht)){
        int index = rand() % ht->size;
        unsigned char *badActor = (unsigned char *) htGetVal(ht, index);
        while (badActor == NULL){
            index = rand() % ht->size;
            badActor = (unsigned char *)htGetVal(ht, index);
        }
        memcpy(baddie, badActor, 16);
        send = true;
    }
    return send;
}
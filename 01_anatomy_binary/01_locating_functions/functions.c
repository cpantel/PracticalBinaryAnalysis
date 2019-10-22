#include <stdio.h>
#include <string.h>
#include <malloc.h>

#define FIRST     "first"
#define SECOND    "second"
#define THIRD     "third"
#define FOURTH    "fourth"

char * int2ordinal(int value) {
   char* map[] = {FIRST, SECOND, THIRD, FOURTH};
   return map[value];
}

int strLen(char * str) {
  return strlen(str);
}

int main(int argc, char* argv[]) {
   char* ordinals[4]; 
   for (int i=1; i<argc && i<5; ++i) {
     ordinals[i] = malloc(256);
     sprintf(ordinals[i], "%s: %d", int2ordinal(i), strLen(argv[i]));
   } 
   for (int i=1; i<argc && i<5; ++i) {
     printf("%s\n", ordinals[i]);
   }
}

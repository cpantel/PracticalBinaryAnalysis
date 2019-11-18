#include <stdio.h>
#include <string.h>
#define BUFFER_LENGTH 32

int globalVar;
static int staticGlobalVar;

void printBuffer(char buffer[BUFFER_LENGTH]) {
  for (int i = 0; i < BUFFER_LENGTH; i++) {
    printf("%02X", buffer[i]);
  }
  printf("\n");
}

int main(int argc, char* argv[]) {
   int localVar;
   static int staticLocalVar;

   void * ptrFunctionPrintf = printf;
   
   char buffer[BUFFER_LENGTH];

   memcpy(buffer,printf,BUFFER_LENGTH);

   printf("globalVar       address %p\n" , &globalVar);
   printf("staticGlobalVar address %p\n" , &staticGlobalVar);
   printf("localVar        address %p\n" , &localVar);
   printf("staticlocalVar  address %p\n" , &staticLocalVar);
   printf("printf          address %p\n" , ptrFunctionPrintf);
   printf("dump @printf before\n");
   printBuffer(buffer);
   printf("dump @printf before\n");
   printBuffer(ptrFunctionPrintf);
   
   return 0;
}

#include <stdio.h>
#include <string.h>
#define BUFFER_LENGTH 32

int globalVar = 0;
static int staticGlobalVar = 0;

int main(int argc, char* argv[]) {
   int localVar = 0;
   static int staticLocalVar = 0;

   printf("globalVar       address %p\n" , &globalVar);
   printf("staticGlobalVar address %p\n" , &staticGlobalVar);
   printf("localVar        address %p\n" , &localVar);
   printf("staticlocalVar  address %p\n" , &staticLocalVar);
   
   return 0;
}

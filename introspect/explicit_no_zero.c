#include <stdio.h>
#include <string.h>

int globalVar = 41;
static int staticGlobalVar = 42;

int main(int argc, char* argv[]) {
   int localVar = 43;
   static int staticLocalVar = 44;

   printf("globalVar       address %p\n" , &globalVar);
   printf("staticGlobalVar address %p\n" , &staticGlobalVar);
   printf("localVar        address %p\n" , &localVar);
   printf("staticlocalVar  address %p\n" , &staticLocalVar);
   
   return 0;
}

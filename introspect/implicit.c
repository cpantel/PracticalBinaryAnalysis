#include <stdio.h>
#include <string.h>

int globalVar;
static int staticGlobalVar;

int main(int argc, char* argv[]) {
   int localVar;
   static int staticLocalVar;

   printf("globalVar       address %p\n" , &globalVar);
   printf("staticGlobalVar address %p\n" , &staticGlobalVar);
   printf("localVar        address %p\n" , &localVar);
   printf("staticlocalVar  address %p\n" , &staticLocalVar);
   
   return 0;
}

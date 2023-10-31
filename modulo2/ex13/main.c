#include <stdio.h>
#include "asm.h"

short length1 = 15;
short length2 = 2;
short height = 5;

int main(){

   short res = getArea();
   
   printf("Area = %d\n",res);
   
   return 0;

}

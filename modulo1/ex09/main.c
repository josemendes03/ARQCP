#include <stdio.h>

#include "sum_integer_bytes.h"

int main(){

     unsigned int p = 0xAABBCCDD;
     
     int sum_bytes = sum_integer_bytes(&p);
     
     printf("The sum of bytes is: %d\n",sum_bytes);  

     return 0;

}

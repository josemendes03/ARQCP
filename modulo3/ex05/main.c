#include <stdio.h>
#include "asm1.h"
#include "asm.h"

int main(){

    int array[] = {1, 3, 4, 5};
    int* ptr = array;	
    short num = 4;
    
    int sum = vec_sum(ptr,num);
    printf("\nThe sum of the elements is %d\n", sum);

    int avg = vec_avg(ptr,num);
    printf("\nThe avg is: %d\n",avg);
             
  
    return 0;
}

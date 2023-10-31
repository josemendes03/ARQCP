#include <stdio.h>

#include "sum_even.h"

int main(){

 int vec[4] = {10,20,30,40};
 
 int n = 4;
 
 int* p_vec = vec;
 
 int result = 0;
 
 result = sum_even(p_vec,n);

 printf("The sum of the even numbers on the array is: %d\n",result);
 
 return 0;

} 

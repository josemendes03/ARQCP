#include <stdio.h>

#include "sort_without_reps.h"

int main(){

 short src[] = {1,2,312,211,1112,2,2,2,1,3,3,4,1};
 
 int n_src = sizeof(src) / sizeof(short);
 
 short dest[n_src];
 
 int n_dest = sort_without_reps(src, n_src, dest);
 
 printf("Elements of the second array:\n");
 
 short i;
 
 for(i = 0; i < n_dest; i++){
 
  printf("%d,",dest[i]);
 
 }
 
   printf("\n"); 


	return 0;

} 

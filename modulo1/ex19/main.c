#include <stdio.h>

#include "swap.h"


int main(){

 short vec1[] = {1,4,5,6,77};
 
 short vec2[] = {0,99,312,5,4};
 
 int size = sizeof(vec1) / sizeof(vec1[0]);
 
 int i;
 
 swap(vec1,vec2,size);
 
 printf("Vec1:\n");
 
 for(i = 0; i < size; i++){
   
   printf("%d,",vec1[i]);
 
 }

   printf("\n");

   int j;

   printf("Vec2:\n");
    
   for(j = 0; j < size; j++){
   
	  printf("%d,",vec2[j]);
 
	}

   printf("\n");

 return 0;
 
}

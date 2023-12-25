#include <stdio.h>
#include "asm.h"

int main(void) {
		
	int array[] = {-1,-1,-1};
	int* ptr = array;
	int num = sizeof(array)/sizeof(array[0]);	
		
	keep_positives(ptr,num);
	
	for(int i = 0; i < num ; i++){
		
	  printf("%d ",array[i]);
	
	}

	printf("\n");
	
	
	return 0;
}

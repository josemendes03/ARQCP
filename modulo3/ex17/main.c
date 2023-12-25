#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int array[] = {10,0,1};
	int* ptr = array;
	int num = sizeof(array)/sizeof(array[0]);
	
	array_sort(ptr,num);
		
	for(int i = 0; i < num; i++){
	printf("%d ",array[i]);
	}
	printf("\n");
	
	
	return 0;
}

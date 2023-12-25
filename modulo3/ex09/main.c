#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int array[] = {8,3,5,7};
	int* ptr = array;
	int num = sizeof(array)/sizeof(array[0]);
   	int x = 10;
   	int* result;
	
	result = vec_search(ptr,num,x);
	printf("The result of the search is: %p\n",result);
	
	
	return 0;
}

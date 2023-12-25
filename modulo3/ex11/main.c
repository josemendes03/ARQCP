#include <stdio.h>
#include "asm.h"

int main(void) {

    int array[] = {54,24,15,1,33};
	int* ptr = array;
	int num = sizeof(array)/sizeof(array[0]);
	int result;

	result = vec_greater12(ptr,num);
	
	printf("The result is %d \n",result);
		
	return 0;
}

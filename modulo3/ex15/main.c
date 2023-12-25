#include <stdio.h>
#include "asm.h"

int main(void) {
	
	long array[] = {-1,255,-1};
	long* ptr = array;
	int num = sizeof(array)/sizeof(array[0]);
	
	int result = sum_third_byte(ptr,num);
		
	printf("The result is %d \n",result);
	
	return 0;
}

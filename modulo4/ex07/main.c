#include <stdio.h>
#include "asm.h"

int main(){
	
	short x[] = {1,2,3,4,5};
	short* vec = x;
	int n = sizeof(x)/sizeof(x[0]);
	
	int result;
	
	result = count_even(vec,n);
	
	printf("There are %d even numbers on the array \n",result);

	return 0;
}

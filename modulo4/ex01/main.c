#include <stdio.h>
#include "asm.h"

int main(){

	int x = 420906795008;
	long result;
	
	result = d_square(x);
	
	printf("The double of the square of %d is %ld \n",x,result);

	return 0;
}

#include <stdio.h>
#include "asm.h"

int main(){

	short a = 4;
	short b = 3;
	short c = 2;
	
	short result = greatest(a,b,c);
	
	printf("The greatest between %d, %d and %d is %d \n",a,b,c,result);

	return 0;
}

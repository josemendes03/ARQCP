#include <stdio.h>
#include "asm.h"

int main(){
	short x = 4;
	short* v1 = &x;
	short v2 = 5;
	
	long result;
	
	result = inc_and_cube(v1,v2);
	
	printf("The value %d was increased by one, now its value is %d. The cube of %d is %ld \n",x-1,x,v2,result);


	return 0;
}

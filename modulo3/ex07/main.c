#include <stdio.h>
#include "asm.h"

int main(void) {
	
	char array[] = " adda ";
	char* ptr = array;
	int result;
	
	result = decrypt(ptr);
	
	printf("The result is %d and %s\n",result,array);
	

	
	return 0;
}

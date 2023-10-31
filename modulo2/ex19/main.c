#include <stdio.h>
#include "asm.h"

char current = 50, desired = 30; 
int result;

int main() {

	result = needed_time();
	printf("\nResult: %d\n", result);
	
	return 0;
}

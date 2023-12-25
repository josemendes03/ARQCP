#include <stdio.h>
#include "asm.h"

int main() {
	char ptr[MAX_CHAR] = "Exercise Test Message";
	
	printf("Original char: %s\n", ptr);
	encrypt(ptr);
	printf("Encrypted char: %s\n", ptr);
	return 0;
}

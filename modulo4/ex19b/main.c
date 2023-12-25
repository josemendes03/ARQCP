#include <stdio.h>
#include "asm.h"

int main(){
	int vec1[] = {13,4,55,1};
	int lenght = sizeof(vec1)/sizeof(int);
	int vec2[lenght];
	
	int *ptr1 = vec1;
	int *ptr2 = vec2;
	char x = 2;
	
	add_byte(2,ptr1,ptr2);
	
	printf("Primeiro array: ");
	for(int i = 1; i < lenght; i++){
		printf("%x  ", vec1[i]);
	}
	printf("\n");
	
	printf("Segundo array: ");
	for(int i = 1; i < lenght; i++){
		printf("%x  ", vec2[i]);
	}
	printf("\n");
	
	return 0;
}

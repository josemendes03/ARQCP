#include <stdio.h>
#include "asm.h"

int main(void) {
	
	char array[] = {20,20,20,20};
	char* ptrgrades = array;
	int num = sizeof(array)/sizeof(array[0]);
	int result[21];
	int* ptrfreq = result;

	
	frequencies(ptrgrades,num,ptrfreq);
	
	
	for(int i = 0; i < 21; i++){
	printf("%d ",result[i]);
	}
	printf("\n");
	
	
	return 0;
}

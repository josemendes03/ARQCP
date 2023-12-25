#include <stdio.h>
#include "asm.h"

char array1[] = "Arquitetura";
char array2[] = "Computadores";
int num = sizeof(array1) / sizeof(array1[0]);

int main(){
	
	printf("Before Swap\n");
    
    printf("\nArray1: %s\n", array1);
    printf("Array2: %s\n", array2);
    
    swap(array1, array2, num);
    
    printf("\nAfter Swap\n");

    printf("\nArray1: %s\n", array1);
    printf("Array2: %s\n", array2);

    return 0;
}

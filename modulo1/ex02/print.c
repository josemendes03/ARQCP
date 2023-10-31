#include <stdio.h>
#include "print.h"

// imprime o valor de cada variavel
void printValues(double ptrD, int ptrI, char ptrC){
	printf("Value of d variable: %f\n", ptrD);
	printf("Value of i variable: %d\n", ptrI);
	printf("Value of c variable: %c\n", ptrC);
}

// imprime o address das variaveis d, i e c
void printAddresses(double ptrD, int ptrI, char ptrC) {
    printf("Address stored in ptrD variable: %p\n", ptrD);
    printf("Address stored in ptrI variable: %p\n", ptrI);
    printf("Address stored in ptrC variable: %p\n", ptrC);
}

// imprime o tamanho ocupado na memoria por cada variavel declarada
void printMemory(double d, int i, char c, double ptrD, int ptrI, char ptrC){
	printf("Memory size of d variable: %zu\n", sizeof(d));
	printf("Memory size of i variable:%zu\n", sizeof(i));
	printf("Memory size of c variable:%zu\n", sizeof(c));
	printf("Memory size of *ptrD variable:%zu\n", sizeof(ptrD));
	printf("Memory size of *ptrI variable:%zu\n", sizeof(ptrI));
	printf("Memory size of *ptrC variable:%zu\n", sizeof(ptrC));
}

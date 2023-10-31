#include <stdio.h>
#include "print.h"

// declarar as variaveis
    double d = 3.14;
    int i = 20;
    char c = 'a';

// declarar e inicializar os apontadores
    double *ptrD = &d;
    int *ptrI = &i;
    char *ptrC = &c;
    
int main() {
	printValues(*ptrD, *ptrI, *ptrC);
    printAddresses(*ptrD, *ptrI, *ptrC);
    printMemory(d, i, c, *ptrD, *ptrI, *ptrC);
    return 0;
}


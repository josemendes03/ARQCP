#include <stdio.h>
#include "iterateOnStr.h"

int main() {
	//declara um vetor de chars / string e um caracter para verificar se está presente
    char str[] = "ARQCP is about create good code in C";
    char c = 'i';
//invoca a funçao no modulo iterateOnStr.c
    char *result = where_is(str, c);
//dá print mediante o resultado retornado pela funçao
    if (result != NULL) {
        printf("Found '%c' at position %ld\n", c, result - str);
    } else {
        printf("'%c' is not found in the string.\n", c);
    }
    return 0;
}

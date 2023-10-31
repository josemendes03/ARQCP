#include <stdio.h>
#include "asm.h"


	short op1 = 0x1234;  // Exemplo de valor para op1
    short op2 = 0x5678;  // Exemplo de valor para op2
    
int main() {
    
    short result = exchangeBytes();

    printf("Original op1: 0x%x\n", op1);
    printf("Original op2: 0x%x\n", op2);
    printf("Result: 0x%x\n", result);

    return 0;
}

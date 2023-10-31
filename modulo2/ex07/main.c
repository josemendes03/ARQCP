#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

short s1=6;
short s2=7;

int main(void) {
    printf("Valor op1:");
    scanf("%d",&op1);
    
    printf("Valor op2:");
    scanf("%d",&op2);
    
    sum();
    another_sum();
    swapBytes();
    crossSubBytes;
    printf("sum = %d:0x%x\n", sum(),sum());
    printf("Another Sum = %ld\n", another_sum());
    printf("Swap Bytes = %ld\n", swapBytes());
    printf("crossSubBytes = %ld\n", crossSubBytes());
    
    return 0;
}

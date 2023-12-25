#include <stdio.h>
#include "asm.h"

int main() {
    long number = 10; // 10 (10) -> 1010(2)      2 bits inativos
    int result = count_bits_zero(number);

    printf("\nFUNCTION IN ASSEMBLY LANGUAGE: \n");
    printf("Number of inactive bits in %ld: %d\n", number, result);
    
    return 0;
}

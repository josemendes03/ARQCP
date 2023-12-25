#include <stdio.h>
#include "count_bits_zero.h"

int main() {
    long number = 10; // 10 (10) -> 1010(2)      2 bits inativos
    int result = count_bits_zero(number);

    printf("\nFUNCTION IN C LANGUAGE: \n");
    printf("Number of inactive bits in %ld: %d\n", number, result);
    
    return 0;
}

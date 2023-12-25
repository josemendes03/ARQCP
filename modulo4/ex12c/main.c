#include <stdio.h>
#include "asm.h"

int main() {
    long x = 12345;  
    long result = count_bits_zero(x);
    printf("Número de bits inativos em %ld: %ld\n", x, result);

    int vec[] = {456, 789, 123, 987};
    int num_elements = sizeof(vec) / sizeof(vec[0]);
    int total_result = vec_count_bits_zero(vec, num_elements);
    printf("Número total de bits inativos no vetor: %d\n", total_result);

    return 0;
}

#include <stdio.h>
#include "asm.h"

int main() {
    char vector[] = "arqcp modulo 4";
    int x = 3;

    int result = sum_multiples_x(vector, x);

    printf("A soma dos múltiplos de %d no vetor é: %d\n", x, result);

    return 0;
}

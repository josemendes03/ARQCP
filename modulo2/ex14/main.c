#include <stdio.h>
#include "asm.h"

int main() {
    int result = getArea();  // Chama a função em assembly
    printf("lenght1: %d\n", length1);
    printf("lenght2: %d\n", length2);
    printf("height: %d\n", height);

    printf("A área do trapézio é: %d\n", result);
    return 0;
}

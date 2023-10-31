#include <stdio.h>
#include "asm.h"

long num = 15;

int main() {
    long result;
    
    result = steps();

    printf("Resultado: %ld\n", result);

    return 0;
}

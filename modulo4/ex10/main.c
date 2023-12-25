#include <stdio.h>
#include "asm.h"

int main() {
    short x = 10;
    char y = 2;

    printf("Original values: x = %d, y = %d\n", x, y);

    // Chama a função decr
    decr(&x, y);

    printf("After decr: x = %d, y = %d\n", x, y);

    // Chama a função call_decr
    int result = call_decr(5);

    printf("Result of call_decr: %d\n", result);

    return 0;
}

#include <stdio.h>
#include "asm.h"

int main() {
    int a = 5;
    int b = 10;
    int c = 3;
    
    int result = calc(a, &b, c);

    printf("Result: %d\n", result);

    return 0;
}

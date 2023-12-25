#include <stdio.h>
#include "asm.h"

int main() {
    char a = 0b11011011; 
    char b = 0b10101100;
    int pos = 10;

    long long result = join_bits(a, b, pos);

    printf("Result: %llx\n", result);

    return 0;
}

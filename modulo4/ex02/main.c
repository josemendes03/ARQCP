#include <stdio.h>
#include "asm.h"

int main() {
    int n = 2;
    long result = sum2_n(n);

    printf("The square of the sum of integers from 1 to %d is %ld\n", n, result);

    return 0;
}

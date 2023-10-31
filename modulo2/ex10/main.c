#include <stdio.h>
#include "asm.h"

int op1 = 3;
int op2 = 4;
int op3 = 5;

int main() {

    long result = sum3ints();
    printf("Result: %ld\n", result);
    return 0;
}

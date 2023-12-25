#include <stdio.h>
#include "asm.h"

int main() {
    int num1 = 10;
    int num2 = 5;
    int result;

    sum_sub(num1, num2, &result);  //chama a funçao asm

    printf("Sum: %d\n", num1 + num2);
    printf("Subtraction: %d\n", result);

    return 0;
}

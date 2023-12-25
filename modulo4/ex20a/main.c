#include <stdio.h>
#include "sum_multiples_x.h"

int main() {
    char vector[] = {2, 4, 6, 8, 10, 0};
    int x = 12345678;

    int result = sum_multiples_x(vector, x);
    printf("Sum of multiples of the third byte of x: %d\n", result);

    return 0;
}

#include <stdio.h>
#include "asm.h"

int main() {
    int array[] = {1, 3, 2, 4, 7, 5, 9, 8, 6};
    int num_elements = sizeof(array) / sizeof(array[0]);

    int result = count_max(array, num_elements);

    printf("how many elements in arr satisfy the condition: %d\n", result);

    return 0;
}

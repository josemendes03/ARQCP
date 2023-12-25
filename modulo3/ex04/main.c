#include <stdio.h>
#include "asm.h"

int main() {
    short arr[] = {1, 2, 3, 4, 5};
    int num_elements = sizeof(arr) / sizeof(arr[0]);

    printf("Original Array: ");
    for (int i = 0; i < num_elements; ++i) {
        printf("%d ", arr[i]);
    }

    vec_add_three(arr, num_elements);

    printf("\nModified Array: ");
    for (int i = 0; i < num_elements; ++i) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}

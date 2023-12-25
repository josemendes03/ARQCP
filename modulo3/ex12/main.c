#include <stdio.h>
#include "asm.h"

int main() {
    int arr[] = {25, 40, 70, 30, 80};
    int num_elements = sizeof(arr) / sizeof(arr[0]);

    unsigned char num_changed = vec_zero(arr, num_elements);

    printf("Modified Array: ");
    for (int i = 0; i < num_elements; ++i) {
        printf("%d ", arr[i]);
    }
    
    printf("\nNumber of changed elements: %u\n", num_changed);

    return 0;
}

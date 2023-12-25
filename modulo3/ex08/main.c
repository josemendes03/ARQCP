#include <stdio.h>
#include "test_even.h"
#include "vec_sum_even.h"


int main() {
    int arr[] = {1, 2, 3, 4, 5, 6};
    int num_elements = sizeof(arr) / sizeof(arr[0]);

    int sum_even = vec_sum_even(arr, num_elements);

    printf("Sum of even elements: %d\n", sum_even);

    return 0;
}

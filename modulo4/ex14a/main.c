#include <stdio.h>
#include "set_bit.h"

int main() {
    long number = 40;
    char position = 2;

    int result = set_bit(&number, position);

    if (result == -1) {
        printf("Invalid bit position.\n");
    } else if (result == 0) {
        printf("Bit was altered.\n");
    } else {
        printf("Bit was already 1.\n");
    }

    printf("Updated number: %ld\n", number);

    return 0;
}

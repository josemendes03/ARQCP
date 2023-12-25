#include <stdio.h>
#include "asm.h"

int main() {
    long number = 65535;
    char position = 15;

    int result = set_bit(&number, position);

    if (result == -1) {
        printf("Invalid bit position.\n");
    } else if (result == 1) {
        printf("Bit was altered.\n");
    } else {
        printf("Bit was already 1.\n");
    }

    printf("Updated number: %ld\n", number);

    return 0;
}

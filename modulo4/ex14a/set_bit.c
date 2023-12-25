#include <stdio.h>
#include "set_bit.h"

int set_bit(long *ptr, char pos) {
    if (pos < 0 || pos >= 64) {
        // Invalid position
        return -1;
    }

    long mask = 1L << pos;  // Create a mask with '1' at the specified position

    if ((*ptr & mask) == 0) {
        // Bit was 0, set it to 1
        *ptr |= mask;
        return 1;  // Bit was altered
    } else {
        // Bit was already 1
        return 0;  // Bit was not altered
    }
}



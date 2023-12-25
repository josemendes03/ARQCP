#include <stdio.h>
#include "changes.h"

void changes(int *ptr) {
    unsigned char *bytes = (unsigned char *)ptr;	// Convert the integer to a byte array

    if (bytes[3] > 15) {							// Check if the value of the fourth byte is greater than 15

        bytes[2] = ~bytes[2];						// Invert the third byte, bitwise operation, aplies a mask

    }
}

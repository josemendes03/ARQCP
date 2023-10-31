#include <stdio.h>
#include "asm.h"

short s1=6;

int main(void) {
    swapBytes();
    printf("Swap Bytes = %ld\n", swapBytes());
    
    return 0;
}

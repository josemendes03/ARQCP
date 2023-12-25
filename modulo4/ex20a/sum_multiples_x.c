#include <stdio.h>
#include "sum_multiples_x.h"

int sum_multiples_x(char *vec, int x) {
    
    unsigned char thirdByte = (x >> 16) & 0xFF;				// Find the third byte of x (considering x as an integer)
    int sum = 0;											// Initialize sum to 0
    
    for (int i = 0; vec[i] != 0; i++) {
        if ((unsigned char)vec[i] % thirdByte == 0) {       // Check if the element is a multiple of the third byte of x	
            sum += vec[i];									// if is a multiple, add to sum
        }
    }
    return sum;
}

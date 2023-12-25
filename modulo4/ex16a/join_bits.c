#include <stdio.h>
#include "join_bits.h"

long join_bits(long a, long b, char pos) {
    unsigned long mask = 0xFFFFFFFFFFFFFFFF;  	// Mascara: 1111 1111 1111 1111 1111 1111 1111 1111
    long aMask = mask >> (63 - pos);           	// Desativa os bits irrelevantes para aplicar à variável 'a'
    long bMask = ~aMask;                              	// Desativa os bits irrelevantes para aplicar à variável 'b'

    long value = (a & aMask) | (b & bMask); 			// Aplica as operações que concatenam 'a' e 'b'
    return value;
}

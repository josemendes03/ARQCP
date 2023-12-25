#include "count_bits_zero.h"

int count_bits_zero(long x) {
    int counter = 0;				// contador para bits inativos

    for (int i = 0; i < 64; i++) {	// long - 64bits
        if ((x & 1) == 0) {			// Verifica se o bit menos significativo de x é zero utilizando o AND
            counter++;  			// Incrementa o contador se o bit for zero
        }
        x >>= 1;				    // Desloca x para a direita (shift right) para verificar o próximo bit
    }
    return counter;
}

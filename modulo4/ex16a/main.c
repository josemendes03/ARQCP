#include <stdio.h>
#include "join_bits.h"

int main() {
    long a = 10; // Exemplo de valor para 'a'
    long b = 20; // Exemplo de valor para 'b'
    char pos = 15; // Exemplo de posição

    long result = join_bits(a, b, pos);

    printf("Resultado: %ld\n", result);

    return 0;
}

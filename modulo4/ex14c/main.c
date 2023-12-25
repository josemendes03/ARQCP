#include <stdio.h>
#include "asm.h"

int main() {
    long value = 0;  // Exemplo de um inteiro longo inicializado com zero
    int pos = 5;     // Posição do bit a ser definido

    printf("Valor original: %ld\n", value);

    if (set_bit(&value, pos)) {
        printf("Bit na posição %d foi definido com sucesso!\n", pos);
    } else {
        printf("Posição inválida! Nada foi alterado.\n");
    }

    printf("Novo valor: %ld\n", value);

    if (set_2bits(&value, pos)) {
        printf("Bits nas posições %d e %d foram definidos com sucesso!\n", pos, 63 - pos);
    } else {
        printf("Posição inválida! Nada foi alterado.\n");
    }

    printf("Novo valor: %ld\n", value);

    return 0;
}

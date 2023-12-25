#include <stdio.h>
#include "asm.h"

int main() {
    int value = 0x12345678;  // Pode substituir por qualquer valor desejado

    printf("Valor original: %08X\n", value);
    
    changes(&value);
    
    printf("Novo valor: %08X\n", value);

    return 0;
}

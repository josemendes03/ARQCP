#include <stdio.h>
#include "asm.h"

int main() {
    int value = 0x12345678; 

    printf("Valor original: %08X\n", value);
    
    changes(&value);
    
    printf("Novo valor: %08X\n", value);

    int vec[] = {0x11112222, 0x33334444, 0x55556666};  
    int num_elements = sizeof(vec) / sizeof(vec[0]);

    printf("Vetor original:\n");
    for (int i = 0; i < num_elements; ++i) {
        printf("%08X ", vec[i]);
    }
    printf("\n");

    changes_vec(vec, num_elements);

    printf("Novo vetor:\n");
    for (int i = 0; i < num_elements; ++i) {
        printf("%08X ", vec[i]);
    }
    printf("\n");

    return 0;
}

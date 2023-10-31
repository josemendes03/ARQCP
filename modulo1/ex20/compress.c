#include <stdio.h>
#include "compress.h"

void compress(int* vec_ints, int n, long* vec_longs){
        for (int i = 0; i < n; i += 2) {
			//Operaçao bitwise -> O (<<32) faz deslocar para a esquerda 32 bits, dps faz o OR (|) entre os dois ints 
        long compressed = (long)vec_ints[i] | ((long)vec_ints[i + 1] << 32);
        
            //dividir o index do vec por 2 garante que ficam em posiçoes consecutivas,
            //pois a cada iteraçao  no for estamos a tratar 2 numeros
        vec_longs[i / 2] = compressed;
    }
}

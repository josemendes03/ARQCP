#include <stdio.h>
//modulo que dá print ao conteudo de um vetor
void print_intVector(int vec[], int n){
    for (int i = 0; i < n; i++) {
        printf("%d ", vec[i]);
    }
    printf("\n");
}

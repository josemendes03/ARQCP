#include <stdio.h>
#include "copy_vet.h"
#include "print_vec.h"

int main() {
//declaraçao dos vetores
    int vec1[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int sizeOfVec1 = sizeof(vec1) / sizeof(vec1[0]);
    
    int n = 5; // Number of integers to copy
    int vec2[n]; //a dimensao do novo vetor tem que ser n para ter espaço para guardar

//invoca o modulo que copia o conteudo
    copy_vec(vec1, n, vec2);
    
//apresenta no terminal os vetores
    printf("Vector 1 content: \n");
    print_intVector(vec1, sizeOfVec1);
    printf("Vector 2 content: \n");
    print_intVector(vec2, n);
   
    return 0;
}

#include <stdio.h>
//modulo para copiar o conteudo de um vetor para o outro
void copy_vec(int *vec1, int n, int *vec2){
	for(int i = 0; i < n; i++){
		*(vec2 + i) = *(vec1 + i); }
}

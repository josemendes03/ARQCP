#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "populate.h"
#include "inc_nsets.h"

//preenche o vec com valores aleatorios
void populate(unsigned char *vec, int num, unsigned char limit){
	//como a funçao srand precisa de um valor semente para produzir resultados diferentes
	//em varias utilizaçoes, usamos o time(NULL) para essa semente ser sempre um valor aleatorio
	//e como consequencia os valores gerados por srand tambem
	srand(time(NULL));
	
	for (int i = 0; i < num; i++) {
        vec[i] = (unsigned char)(rand() % (limit + 1));
         // gera um numero random entre 0 e 20 (o limit +1 é devido ao facto da funçao excluir o valor limite, assim garante que usa o 20)
    }

}

#include <stdio.h>
#include "swap_values.h"

//troca o valor atribuido a variavel x com o valor da y
void swap_nums(int *x, int *y){
    int tmp;
    tmp = *x;
    *x = *y;
    *y = tmp;
}

//troca o valor do apontador da variavel x com o da y. para mudar apontadores,
// -> apontadores para os apontadores, ou ent duplos(como aplicado aqui)
void swap_pointers(char **x, char **y){
    char *tmp = *x;
    *x = *y;
    *y = tmp;
}



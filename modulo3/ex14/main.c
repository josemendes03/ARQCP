#include <stdio.h>
#include "asm.h"

int array[] = {1, 1, 1,0};
int num = 4;
int x = 1;
int *ptr = array;

int main() {

    int x_duplicated = exists(ptr, num, x);

    printf("O valor de X está duplicado? : ");
    if(x_duplicated == 1){
		printf("Sim");
		}else{
			printf("Nao");
			}

    int res = vec_diff(ptr, num);

    printf("\nNúmero de elementos nao duplicados = %d\n", res);

    return 0;
}

#include <stdio.h>
#include "swap_values.h"

int main(){
	
//declara as variaveis e respoetivos pointers
    int a = 3, b = 4;
    char *s1 = "I should print second\n";
    char *s2 = "I should print first\n";

//chama as funçoes do modulo swap_values.c
    swap_nums(&a, &b);
    printf("a is %d \n", a);
    printf("b is %d \n\n", b);

    swap_pointers(&s1, &s2);
    printf("s1 is %s", s1);
    printf("s2 is %s", s2);

    return 0;
}

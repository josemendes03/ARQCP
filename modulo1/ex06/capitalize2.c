#include <stdio.h>
#include "capitalize2.h"

void capitalize2(char *str) {
	
    while (*str != 0) {
        if (*str >= 'a' && *str <= 'z') {
            // Se o caracter for minúsculo passa a maiúsculo
            *str = *str - 'a' + 'A';
        }
        str++; //Avança para o proximo caracter na string
    }
}
	


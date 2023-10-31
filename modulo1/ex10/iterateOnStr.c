#include <stdio.h>

char* where_is(char *str, char c){
	//verifica ate ao valor nulo (\0) que encerra uma string
	while (*str != '\0') {
        if (*str == c) {
            return str; // dá return ao valor da str
        }
        str++; // avança para o proximo caracteree
    }
    return NULL; // retorna null se nao encontrar o caracter na string
}



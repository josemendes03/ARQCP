#include <stdio.h>
#include "format_string.h"

// Função para verificar se um caractere é uma letra maiúscula
int is_upper(char c) {
    return (c >= 'A' && c <= 'Z');
}

// Função para verificar se um caractere é uma letra minúscula
int is_lower(char c) {
    return (c >= 'a' && c <= 'z');
}

// Função para converter um caractere minúsculo em maiuscul0
char to_upper(char c) {
    if (is_lower(c)) {
        return c - ('a' - 'A');
    }
    return c;
}

// Função para converter um caracter maiuscul0 em minuscul0
char to_lower(char c) {
    if (is_upper(c)) {
        return c + ('a' - 'A');
    }
    return c;
}

void format_string(char *str) {
    int capitalize_next = 1;  // Supondo que a proxima letra é maiuscula, = true (1)
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == ' ') {
            capitalize_next = 1;  // Se for um espaço, a próxima letra deve ser maiúscula
        } else {
            if (capitalize_next) {
                char x; 
                x= to_upper(str[i]);
                str[i] = x;
                capitalize_next = 0;//se tivermos a inicial maiuscule, as seguintes nao o devem ser, 
                                    //logo fica com valor false(0)
            } else {
				char x;
				x = to_lower(str[i]);
                str[i] = x;
            }
        }
    }
  // Remove os espaços entre palavras
    int write = 0;
    for (int read = 0; str[read] != '\0'; read++) {
        if (str[read] != ' ' || (read > 0 && str[read - 1] != ' ')) {
            str[write] = str[read];
            write++;
		}
    }
    str[write] = '\0';  // Adicionar o caractere nulo para indicar o final da string
}



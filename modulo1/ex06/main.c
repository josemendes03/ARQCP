#include <stdio.h>
#include "capitalize2.h"
#include "printString.h"

int main(){
	//declaraçao de uma string e o seu apontador
	char String[] = "Exemplo do ex06";
	char *ptrString = String;
	
	//invocaçao das funçoes nos modulos
	capitalize2(ptrString);
	printString(ptrString);
	
	return 0;
	}

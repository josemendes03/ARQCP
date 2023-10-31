#include <stdio.h>
#include "check.h"

//retorna um int com valor de 0 ou 1, caso verifique ou nao a condiçao
int check(unsigned char x, unsigned char y, unsigned char z){
	char verifyCondition = 0;// é 0 caso nao satisfaça a condiçao
	if ((x < y) && (y < z)){
		verifyCondition = 1;//se verificar, retorna 1 (true)
		return verifyCondition;
		}
	return verifyCondition;
}

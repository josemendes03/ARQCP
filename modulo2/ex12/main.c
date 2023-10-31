#include <stdio.h>
#include "asm.h"

int A = 10, B = 5;

int main(){
	
	int result = isMultiple();
	if(result == 1){
		printf("Os numeros sao multiplos \n");
	}else{
		printf("Os numeros nao sao multiplos \n");
		}
	
	return 0;
}

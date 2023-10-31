#include <stdio.h>
#include "functions.h"
#include "asm.h"

int main(){
	
   
    printf("Resultados das funcoes C\n");
    printf("%d\n",c_f1());
    printf("%d\n",c_f2());
    printf("%d\n",c_f3());
    printf("%d\n",c_f4()); 
    
    printf("Resultados das funcoes Assembly\n");
    printf("%d\n",f1());
    printf("%d\n",f2());
    printf("%d\n",f3());
    printf("%d\n",f4());
    
    return 0;
    
}

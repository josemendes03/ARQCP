#include <stdio.h>
#include "count_words.h"

int main(){
	//declara o array de chars str[] e inicializa com a frase exemplo
	char str[] = "     the     numBEr     must be  saved";
	//deleclara a variavel x e inicializa com o valor retornado pela a funçao que conta as palavra na str
    int x = count_words(str);
    printf("%d\n", x);
   
   return 0;
}

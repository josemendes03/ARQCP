#include <stdio.h>

#include "capitalize.h"

int main(){

    char str[] = "I will master ARQCP";
    char* p_str = str;
  
    capitalize(p_str);
    
    printf("Capitalized string %s\n",str);


	return 0;
}

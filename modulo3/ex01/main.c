#include <stdio.h>
#include "asm.h"

int main() {
	
	 char string[] = "5555 Arqcp 5 5 tres cincos";

	 char* ptr = string;
	
   	 int counter_five = five_count(ptr);
    
   	 printf("\nThere are %d fives in the string\n", counter_five);
      
    return 0;
}

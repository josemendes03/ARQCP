#include <stdio.h>
#include "asm.h"

int main(){
	
	char string1[] = "Um urubu es TU";
	char string2[sizeof(string1)];
	char * ptr1 = string1;
	char * ptr2 = string2;
    
    str_copy_roman2(ptr1,ptr2);
    
    printf("\nString 1: %s\n", ptr1);
    printf("\nString 2: %s\n", ptr2);
    
    return 0;
}

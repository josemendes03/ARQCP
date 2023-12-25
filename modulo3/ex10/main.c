#include <stdio.h>
#include "asm.h"

extern void str_cat(char* ptr1, char* ptr2, char* ptr3);
char string1[] = "Aulas de ";
char string2[] = "Arqcp";
char string3[(sizeof(string1)/sizeof(string1[0])) + (sizeof(string2)/sizeof(string2[0]))];
char * ptr1 = string1;
char * ptr2 = string2;
char * ptr3 = string3;

int main(){
    str_cat(ptr1, ptr2, ptr3);
    printf("\nconcatenated str: %s\n", ptr3);
    return 0;
}

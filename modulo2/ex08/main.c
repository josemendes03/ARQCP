#include <stdio.h>
#include "asm.h"
extern unsigned short s1;  
extern unsigned short s2;

int main() {

    printf("Before call crossSubBytes:\n");
    printf("s1 = %hu, s2 = %hu\n", s1, s2);

    crossSubBytes();

    printf("After Call crossSubBytes:\n");
    printf("s1 = %hu, s2 = %hu\n", s1, s2);

    return 0;
}

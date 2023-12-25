#include <stdio.h>
#include "asm.h"

int main(){

    int a = 1;
    int b = 0;
    short c = 0;
    char d = 0;
    
    printf("Result: %d\n", call_proc(a, b, c, d));
    
    return 0;
}

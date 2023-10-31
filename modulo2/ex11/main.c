#include <stdio.h>
#include "asm.h"
int op1, op2;

int main(){
    char flag_detected;
    op1 = -127;
    op2 = -10;
    flag_detected = verify_flags();

    printf("\nAtivou flag? valor: %d Overflow\n",flag_detected);

    op1 = 0x00000001;
    op2 = 0xFFFFFFFF;
    flag_detected = verify_flags();

    printf("\nAtivou flag? valor: %d Carry\n", flag_detected);
      
    op1 = 5;
    op2 = 6;
    flag_detected = verify_flags();

    printf("\nAtivou flag? valor: %d\n", flag_detected);

    return 0;
}

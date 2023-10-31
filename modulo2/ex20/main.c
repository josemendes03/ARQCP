#include <stdio.h>
#include "asm.h"

extern int result;
int num = -5;

int main() {


    int result = check_num();

    switch (result) {
        case 1:
            printf("Result: num is even and negative\n");
            break;
        case 2:
            printf("Result: num is odd and negative\n");
            break;
        case 3:
            printf("Result: num is even and positive\n");
            break;
        case 4:
            printf("Result: num is odd and positive\n");
            break;
        default:
            printf("Invalid result\n");
    }

    return 0;
}

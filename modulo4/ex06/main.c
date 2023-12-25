#include <stdio.h>
#include "asm.h"

int main() {
    char str1[] = "arquitetura";
    char str2[] = "computadores";
    char str3[] = "arquitetura";

    int result1 = test_different(str1, str2);
    int result2 = test_different(str1, str3);

	printf("If the strings are different, the function should return 1, or 0 otherwise. \n");
    printf("test_different(str1, str2): %d\n", result1);
    printf("test_different(str1, str3): %d\n", result2);

    return 0;
}

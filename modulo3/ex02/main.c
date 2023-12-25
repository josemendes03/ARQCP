#include <stdio.h>
#include "asm.h"

extern void str_copy_roman(char* ptr1, char* ptr2);

int main() {
    char source[] = "This is a test string with some 'u's - u u u u ";
    char destination[100];

    str_copy_roman(source, destination);

    destination[sizeof(destination) - 1] = '\0'; //termina a string

    printf("Original string: %s\n", source);
    printf("Modified string: %s\n", destination);

    return 0;
}

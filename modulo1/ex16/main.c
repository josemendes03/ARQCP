#include <stdio.h>

int main(){
	char str[] = "     the     numBEr     must be  saved      ";
    format_string(str);
    printf("%s\n", str); // "The Number Must Be Saved"
}

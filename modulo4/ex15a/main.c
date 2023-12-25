#include <stdio.h>
#include "reset_bits.h"

int main(){

    long a = 15;
    char left = 6;
    char right = 7;
	
	long result = reset_bits(a,left,right);
	
	printf("Result: %lx \n",result);
	
	return 0;
}

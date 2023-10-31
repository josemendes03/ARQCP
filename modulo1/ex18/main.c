#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int main() {
    unsigned char vec[50]; // Create an array of 50 elements
    int numElements = sizeof(vec) / sizeof(vec[0]);
    unsigned char limit = 20;

    populate(vec, numElements, limit);
    
    for(int i = 0; i < numElements; i++){
			if(check(vec[i], vec[i+1], vec[i+2]) == 1){
				numberOfSets++;
			}
		}

    printf("\n O numero de sets é: %d \n", numberOfSets);
 
 
    return 0;
}

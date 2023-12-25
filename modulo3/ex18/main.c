#include <stdio.h>
#include "asm.h"

#define ARRAY_SIZE 15

short sourceArray[] = {3, 4, 5, 5, 3, 3, 2, 2, 1, 1, 9, 2, 2, 7, 8};
int arraySize = ARRAY_SIZE;
short destinationArray[ARRAY_SIZE];

short *sourcePtr = sourceArray;
short *destinationPtr = destinationArray;

int main() {

    int numberOfMoves = sort_without_reps(sourcePtr, destinationPtr, arraySize);

    printf("\nNumber of Items: %d\n", numberOfMoves);

    printf("New Array: ");
    for (int i = 0; i < numberOfMoves; i++) {
        printf("%d ", destinationArray[i]);
    }
    printf("\n\n");

    return 0;
}

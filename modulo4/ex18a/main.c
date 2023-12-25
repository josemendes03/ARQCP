#include <stdio.h>
#include "changes.h"

int main() {
	int num = 305419900; // Quarto byte maior que 15

    printf("Número antes da modificação: %d\n", num);

    changes(&num);

    printf("Número depois da modificação: %d\n", num);

    return 0;
}

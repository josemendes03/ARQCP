#include <stdio.h>
#include "rotate_right.h"
#include "rotate_left.h"

int main(){	
	short num = 1;
	char nbits = 2;
	
	short resultLeft = rotate_left(num,nbits);
	short resultRight = rotate_right(num,nbits);
	printf("Left Rotation: %x - Right Rotation %x \n",resultLeft,resultRight);
	
	return 0;
}

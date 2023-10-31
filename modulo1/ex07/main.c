#include <stdio.h>

#include "get_array_statistics.h"

int main(){

  int vec[] = {12,3,4,512};
  
  int n = 4;
  
  int min, max;
  
  float avg;
  
  get_array_statistics(vec,n,&min,&max,&avg);

	printf("Minimum: %d\n",min);
	printf("Maximum: %d\n",max);
	printf("Average: %.2f\n",avg);


  return 0;

}

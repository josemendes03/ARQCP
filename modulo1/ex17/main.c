#include <stdio.h>

#include "frequencies.h"

int main(){

    float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0,12.67, 16.23, 18.75};  
    
    int freq[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

    int n = sizeof(grades) / sizeof(grades[0]);
    
    frequencies(grades,n,freq);
    
    printf("Grades:\n");
    
    int i;
    
    for(i = 0; i < n; i++){
    
    printf("%.2f,",grades[i]);
   
    }
    
    printf("\n");
   
    printf("Freq:\n");
  
    int j;
    
    for(j = 0; j < 20; j++){
    
    printf("%d,",freq[j]);
    
    }
    
    printf("\n");
    
	return 0;

}

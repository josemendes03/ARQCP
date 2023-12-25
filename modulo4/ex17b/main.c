#include <stdio.h>
#include "greater_date.h"

int main(){

     unsigned int date1 = 0x00200301;
     
     unsigned int date2 = 0x00100215;
     
     unsigned int result = greater_date(date1,date2);
     
     printf("The greater date is: %ld", result);

     return 0;
}

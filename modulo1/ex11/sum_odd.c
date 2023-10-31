int sum_odd(int *p){

 int n = *p;
 
 int i;
 
 int odd_sum = 0;
 
 for(i = 1; i <= n; i++){
 
   p++;
 
   if(*p % 2 != 0){
   
    odd_sum += *p;
   
   }
	
 }

 return odd_sum;

}

void get_array_statistics(int* vec,int n, int* min,int* max,float* avg){

    if(n == 0){

    *min = 0;
    *max = 0;
    *avg = 0;
    return;

    }


 int* ptr_vec;

 int minValue = *vec;
 
 int maxValue = *vec;
 
 float avgValue = 0;

 for(ptr_vec = vec; ptr_vec < vec + n; ptr_vec++){
 
  if(*ptr_vec < minValue){
  
	minValue = *ptr_vec;
  
  }
  
  if(*ptr_vec > maxValue){
  
     maxValue = *ptr_vec;
  
  }
 
   avgValue += *ptr_vec;
       
 }

  

   *avg = avgValue / n;
   *min = minValue;
   *max = maxValue;
  
}

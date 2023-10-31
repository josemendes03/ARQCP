void frequencies(float *grades, int n, int *freq){

 float *ptr_grades;

 int i;

 for(ptr_grades = grades; ptr_grades < grades + n; ptr_grades++){
 
    for(i = 0; i < 21; i++){
     
     if(*ptr_grades >= i && *ptr_grades < i + 1){
     
         *(freq + i) += 1;

	 i = 21;

     }
              
    }
    
 }
}

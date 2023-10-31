int sort_without_reps(short *src, int n, short *dest){

   short* ptr_src;    
   short auxx = 0;   
   short* ptr_dest = dest;
   int n_dest = 0;     
   int repetido = 0;
   short aux;   
   short i,j,k;
   
   for(i = 0; i < n; i++){

      for(ptr_src = src + 1 ; ptr_src < src + n; ptr_src++){

        if(*src  == *ptr_src){

         repetido++;
       
       } 

      }

      if(repetido == 0){

        *dest = *src;

        n_dest++;

        auxx++;
       
        dest++; 
        
      }

      src++;

      repetido = 0;
   }

   dest = dest - auxx;
   
   for(j = 0; j < auxx; j++){

     for(k = 0 ; k < auxx; k++){
         
          if(*ptr_dest < *(dest + k)){
          
           aux = *ptr_dest;

           *(dest + j) = *(dest + k);

           *(dest + k) = aux;
           
	}
      }

      ptr_dest++;
   }
   
  return n_dest;

}

void add_byte(char x,int *vec1, int *vec2){

   int i;
   
   int num = *vec1;
   
   *vec2 = num;
   
   char second_byte = 0;
   
   vec1 ++;
   vec2 ++;
 
   for(i = 0; i < num; i++){
	  	     
     second_byte = (*vec1 & 0x00000FF00) >> 8;
   
	 second_byte = second_byte + x;
     
     *vec2 = (*vec1 & 0xFFFF00FF) | (second_byte << 8);
     
     vec1++;
     vec2++;
     
   }


}

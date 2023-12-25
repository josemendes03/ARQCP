int distance(char *a,char *b){
     
     int i = 0;
     
     int qtd = 0;
     
     if(strlen(a) != strlen(b)){
		 return -1;
	 }
     
     
   while(*a != '\0' && *b != '\0'){
   
       if(*a != *b) {
       
         qtd++;
       
       }
        
        i++;
        
        a++;
        b++;
   
   }

    if(qtd == 0){
    
		return 0;
    
    }else{
    
		return qtd;
    }








}

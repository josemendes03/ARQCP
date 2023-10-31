void trim_string(char *str){

  int i = 0;
  
  int j = 0;

  int aux = 0;
  
  while(str[i] != '\0'){ 

     while( *(str + i) == ' '){
          

        if(( *(str + i + 1) != ' ' && j > 0) && *(str + i + 1) != '\0')  {

               j++;
        }
        
        i++;       
      }

       aux = *(str + j);
      
      *(str + j) = *(str + i);  
      
      *(str + i ) = aux;
            
     if(*(str + i + 1 ) != '\0' || *(str + i + 1) != ' '){
       
          j++;
     }
 
      i++;
	
  }

  *(str + j) = '\0';
 
}

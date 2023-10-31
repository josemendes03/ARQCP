void swap(short* vec1, short* vec2,int size){

 short i; 
 
 short aux = 0;
 
 for(i = 0; i < size; i++){
 
    aux = vec1[i];
    
    vec1[i] = vec2[i];
 
    vec2[i] = aux;
 
 
 }

}

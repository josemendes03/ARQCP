int sum_integer_bytes(unsigned int *p){

 int sum = 0;
 
 unsigned char* byte_ptr;
 
 for(byte_ptr = (unsigned char*) p; byte_ptr < (unsigned char*) p +  sizeof(unsigned int); byte_ptr++){
                   
     sum = sum + *byte_ptr;
 
  }
 
  return sum;
 
 
}

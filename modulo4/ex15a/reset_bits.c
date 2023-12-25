long reset_bits(long a, char left, char right) {
   
    long i;
    
    for (i = 0; i < right ; i++) {
        
        a = a  & ~(1L << i);
        
    }
    
    for (i = left + 1; i < 64; i++) {
        
        a = a  & ~(1L << i);
        
    }
    
    return a;
}





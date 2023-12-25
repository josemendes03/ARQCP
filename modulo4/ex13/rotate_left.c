short rotate_left(short num, int nbits){

    short shift_bytes = num << nbits;
    
    short rotate_bytes = num >> (16 - nbits);
    
    short result = shift_bytes | rotate_bytes;
    
    return result;

}

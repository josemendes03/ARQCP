short rotate_right(short num, char nbits){

    short shift_bytes = num >> nbits;
    
    short rotate_bytes = num << (16 - nbits);
    
    short result = shift_bytes | rotate_bytes;
    
    return result;

}

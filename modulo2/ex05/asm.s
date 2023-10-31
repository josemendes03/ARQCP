 .section .data
 .global s1
 
.section .text        
    .global swapBytes    #short swapBytes(void)
        
     swapBytes: 
         
         movw s1(%rip), %ax
         movb %al, %cl
         movb %ah, %al
         movb %cl, %ah
         
         ret
         
 
 

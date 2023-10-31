 .section .data
 .global op1
 .global op2
 .equ CONST, 20
 
.section .text        
    .global swapBytes    #short swapBytes(void)
        
     swapBytes: 
         
         movw s1(%rip), %ax
         movb %al, %cl
         movb %ah, %al
         movb %cl, %ah
         
         ret
       #.global yet_another_sum  # long yet_another_sum(void)
 
 #yet_another_sum:
       #falta codigo     
       
        .global crossSubBytes    #short crossSubBytes(void)
        
     crossSubBytes: 
         
         movw s1(%rip), %ax
         movw s2(%rip), %cx
         
         subb %cl, %ah
         subb %ch, %al
         
         ret   
       

.section .data
    .global op1
    .global op2

.section .text
    .global verify_flags
    
    
    verify_flags:
    
     movw op1(%rip), %ax

     movw op2(%rip), %di
     
     addw %di, %ax
     
     jc carry
     jo oveflow
     movb $0, %al
     jmp end
     
     
     carry:         
         movb $1, %al
         jmp end 
     
     oveflow:
         movb $1, %al
         jmp end 
     
     end:
       ret

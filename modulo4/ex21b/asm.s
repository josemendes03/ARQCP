.section .text
.global distance

distance:
    movq $0, %rcx      
    movq $0, %rdx        
    movl $0, %eax       
    movq $0, %r8         
    movq $0, %r9         
  
loop_start:
    cmpb $0, (%rsi)     
    je check_length

    movb (%rdi, %r8, 1), %dl  
    movb (%rsi, %r9, 1), %cl  

    cmpb %dl, %cl       
    je loop_continue 

    addl $1, %eax      
    jmp loop_continue
    
check_length:           
    cmpb $0, (%rdi)    
    je end
       
    movl $-1, %eax
    jmp end            

loop_continue:
     addq $1, %rsi
     addq $1, %rdi
     jmp loop_start

end:      
    ret


.section .text

    .global reset_bits
     
reset_bits:
       
       addq $1, %rsi
       movq $0, %rcx
 
 first_loop:
 
     cmpq $0, %rdx
     je continue
     
     movq $1, %rax
     SHL %cl, %rax
     notq %rax
     andq %rax, %rdi
     subq $1, %rdx
     addq $1, %rcx
     jmp first_loop

continue: 
    movq %rsi, %rcx
    jmp second_loop
     
second_loop:

     cmpq $64, %rsi
     je end
     
     movq $1, %rax
     SHL %cl, %rax
     notq %rax
     andq %rax, %rdi
     addq $1, %rsi 
     addq $1, %rcx    
     jmp second_loop
        
end:
    movq %rdi, %rax
    ret
     

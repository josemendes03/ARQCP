.section .text

.global frequencies

frequencies:

    movq $0, %rcx

    movq $21, %r8
    movq %rdx, %rax

    preencher_array:
     
     cmpq $0, %r8
     je loop
     
     movl $0, (%rax)
     
     addq $4, %rax    
     subq $1, %r8  
     
     jmp preencher_array

    cmpq $0, %rsi
    je end


loop:
    cmpq $0, %rsi
    je end

    movb (%rdi), %cl
    movzbl %cl, %ecx

    imull $4, %ecx
    addq %rcx, %rdx
    addl $1, (%rdx)
    subq %rcx, %rdx

    addq $1, %rdi
    subq $1, %rsi
    
    jmp loop

end:
   ret

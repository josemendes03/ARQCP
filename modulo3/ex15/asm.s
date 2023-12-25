.section .text

.global sum_third_byte

sum_third_byte:

    movq $0, %rax 
    movq $0, %rcx

    cmpq $0, %rsi
    je null

loop:

    cmpq $0, %rsi
    je end
    
    movl 2(%rdi),%ecx 
    
    addl %ecx, %eax
    
    addq $8, %rdi
    subq $1, %rsi
   
    jmp loop


null:

    movq $0, %rax
    jmp end

end:
    ret

.section .text

.global keep_positives

keep_positives:

    movq $0, %rax 

    cmpq $0, %rsi
    je null

loop:

    cmpl $0, (%rdi)
    jl negative
    
    add $4, %rdi
    
    cmpq $0, %rsi
    je end
    
    subq $1, %rsi
    addq $1, %rax
    
    jmp loop
 


negative:

	movl %eax, (%rdi)
	addq $4, %rdi
	subq $1, %rsi
	addq $1, %rax
	jmp loop
    

null:

    movq $0, %rax
    jmp end

end:
    ret

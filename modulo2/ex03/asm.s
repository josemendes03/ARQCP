 .section .data
 .global op1
 .global op2
 .equ CONST, 20
 
.section .text
 .global sum  # int sum(void)
 sum:
        movl op1(%rip), %ecx    #place op1 in ecx
        movl op2(%rip), %eax    #place op2 in eax
        addl %ecx, %eax         #add ecx to eax. Result is in eax
        ret
 .global another_sum  # long another_sum(void)
 
 another_sum:
        mov $CONST, %rdx
        movl op1(%rip), %edi    
        movslq %edi, %rdi
        movl op2(%rip), %ecx    
        movslq %ecx, %rcx
        movq %rdx, %rax
        movq %rdx, %rsi
        
        subq %rdi, %rdx
        subq %rcx, %rsi
        
        addq %rdx, %rsi
        
        addq %rsi, %rax
        
        
        ret
        
        
 
 

.section .data
	.global op1
	.global op2
	.global op3
	
.section .text
	.global sum3ints  # long sum3ints();
	
sum3ints:
    movslq op1(%rip), %rdi      #move o op1 para o register rdi
    movslq op2(%rip), %rsi      #move o op2 para o register rsi
    movslq op3(%rip), %rdx      #move o op3 para o register rdx
    
    addq %rdi, %rsi           #add op1 to op2
    addq %rsi, %rdx           #add result of op1 + op2 to op3
    
    movq %rdx, %rax  
                            
    ret

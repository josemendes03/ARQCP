.section .text
	.global calculate

calculate:

    movl %edi, %ecx
    imull %esi, %ecx
   
	movl %esi,%edx							
	movl %edi,%esi								
	movb $'*',%dil								

	movl %ecx,%eax

	pushq %rdx
	pushq %rsi 
    pushq %rax
    
    call print_result
    
    popq %rax
	popq %rdi
	popq %rsi
	 
    

    movl %edi, %ecx
    subl %esi, %ecx
    
    movl %esi,%edx							
	movl %edi,%esi								
	movb $'-',%dil	

    subl %eax, %ecx
    movl %ecx, %eax
    
    pushq %rax
	call print_result
	popq %rax 
	
	ret

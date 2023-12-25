.section .text

    .global reset_invert_bits
    
reset_invert_bits:

	pushq %rbp 
	movq %rsp,%rbp 

	call reset_bits
	
	notq %rax			
	
	movq %rbp,%rsp
	popq %rbp
	
	ret    

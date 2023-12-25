.section .note.GNU-stack,"",@progbits  #evita o warning da stack


.section .text
	.global changes 
	
changes:

	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp			# reserva 8 bytes na stack.
	
	movl	(%rdi), %r8d		# copia o ptr para r8d
	andl $0xF000, %r8d 			# *ptr AND 0xF000. resultado em r8d
	movl %r8d, -8(%rbp) 		# guarda o resultado no espaço definido na stack - byteCheck
	shrl	$8, -8(%rbp)		# byteCheck >> 8.
	cmpl	$15, -8(%rbp)		
	jg is_greater_than_15 		# if greater jump para a etiqueta	    
	jmp end 					# jump incondicional para end
	
is_greater_than_15:
	xorl $0xFF0000, (%rdi)		# *ptr = *ptr ^ 0xFF0000.
	
end:
	movq 	%rbp, %rsp
	popq	%rbp
	
	ret

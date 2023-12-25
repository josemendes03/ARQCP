.section .note.GNU-stack,"",@progbits  #evita o warning da stack

.section .text
	
	.global sum_multiples_x
				
sum_multiples_x:

	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp			#variavel local para a sum
	
	movl %esi, %r8d				#mov do x para r8d		
	
	movl	$0,-8(%rbp)		    # sum = 0
	andl	$0xFF0000, %r8d		# thirdByteMask AND x
	movl	%r8d,-16(%rbp)		# multiple = x AND thirdByteMask
	sarl	$16,-16(%rbp)	    # multiple >> 16 (divisão inteira por uma potência de 2^16)
	cmpl	$0,-16(%rbp)		
	je		end_loop			# if equals, jmp end_loop
	
loop_in_vector:
	cmpb	$0, (%rdi)			# compare do vec com o indicador zero byte '\0'
	je		end_loop			# if equals, acabou o loop
	movsbl	(%rdi), %eax		# guarda em eax o *vec
	cltd						
	idivl	-16(%rbp)			# *vec/multiple
	cmpl	$0, %edx			# verifica se o resto em edx é 0
	je		is_multiple			# if equals, jmp is_multiple
	incq	%rdi				# inc no vector - *vec++
	jmp 	loop_in_vector		# jump loop_in_vector
	
is_multiple:
	movsbl	(%rdi), %r9d		# mov do *vec para r9d
	addl	%r9d, -8(%rbp)		# sum += *vec
	incq	%rdi				# inc no vector - *vec++
	jmp		loop_in_vector		# jump incondiconal para loop_in_vector
	
end_loop:
	movl 	-8(%rbp), %eax		# return da sum (variavel local na stack)
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret

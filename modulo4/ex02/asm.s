.section .text
	.global sum2_n
	
	#parametros nos registers
	#int n no %rdi
	
sum2_n:
	movq $0, %rax 		# soma rax
	movslq %edi, %rdi   # 32 bits --> 64 bits extende o sinal
	jmp loop
	
loop:
	cmpq $0, %rdi	 	# compara rdi com 0 (rdi é o n passado por parametro)
	jl end_if_negative 	# if n < 0, para
	je end				# if n = 0, acabava o loop
	addq %rdi, %rax		# adds rdi ao rax (contador)
	decq %rdi			# rdi--
	jmp loop			#volta a entrar no loop até parar jos jumps condicionais

end:
	imulq %rax, %rax	# rax * rax = rax^2_
	ret

end_if_negative:
	movq $0, %rax		#se n < 0, retorna em rax 0
	ret

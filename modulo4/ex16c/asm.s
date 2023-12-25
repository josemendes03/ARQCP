.section .note.GNU-stack,"",@progbits  #evita o warning da staxk

.section .text
	.global mixed_sum
	.global join_bits
	
mixed_sum:
	# Inicializa os registradores %rax e %r8 com 0
	xorq %rax,%rax
	xorq %r8,%r8
	
	# Chama a função join_bits
	call join_bits
	
	# Move o resultado da função join_bits para %r8
	movq %rax,%r8
	
	# Troca os valores de %rdi e %rsi
	movq %rdi,%r10
	movq %rsi,%rdi
	movq %r10,%rsi
	
	# Reinicializa os registradores %rax e %r10 com 0
	xorq %rax,%rax
	xorq %r10,%r10
	
	call join_bits
	
	# Adiciona o resultado ao valor armazenado em %r8
	addq %r8,%rax
	ret
		
join_bits:
	pushq %rcx
	pushq %rsi
	pushq %rdx
	pushq %r9
	pushq %rdi
	pushq %r10
	pushq %r8

	# Inicializa os registradores %ecx e %r9 com 0
	xorl %ecx,%ecx
	xorl %r9d,%r9d
	
	# Converte o byte de %dl para um valor inteiro em %edx
	movsbl %dl,%edx
	
	# Compara %edx com 63
	cmpl $63,%edx
	jle finalee
	
	# Incrementa %edx e calcula 64 - %edx
	addl $1,%edx
	movl $64,%r11d
	subl %edx,%r11d
	
	jmp first_loop

first_loop:
	# Desloca %rdi para a direita e incrementa %ecx
	shrq $1,%rdi #shift right
	incl %ecx
	
	cmpl %ecx,%r8d
	
	je second
	jmp first_loop

second:
	xorl %ecx,%ecx		
	jmp segundo_loope
	
	
segundo_loope:
	# Desloca %rsi para a esquerda e incrementa %ecx
	shlq $1,%rsi
	incl %ecx
	cmpl %ecx,%edx
	
	je finale
	
	jmp segundo_loope
	
finale:
	# Reinicializa %rax, faz um OR entre %rsi e %rdi, move %rdi para %rax
	xorq %rax,%rax
	orq %rsi,%rdi
	movq %rdi,%rax
	
	popq %r8
	popq %r10
	popq %rdi
	popq %r9
	popq %rdx
	popq %rsi
	popq %rcx
	ret

finalee:
	# Reinicializa %rax e move %rdi para %rax
	xorq %rax,%rax
	movq %rdi,%rax
	
	popq %r8
	popq %r10
	popq %rdi
	popq %r9
	popq %rdx
	popq %rsi
	popq %rcx
	ret

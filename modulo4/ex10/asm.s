.section .note.GNU-stack,"",@progbits	# removes the warning " missing .note.GNU-stack section"


.section .text
	.global decr			  #funcao decr
	.global call_decr         #funcao call_decr
	
decr:

	# prólogo
	pushq %rbp                # Guarda o ponteiro da base da pilha
	movq %rsp, %rbp           # Atualiza o ponteiro da base da pilha
	subq $16, %rsp            # Aloca 16 bytes na pilha para as variáveis locais
	
	movswl (%rdi), %eax       # Carrega o valor short em rdi e o converte para int em eax
	movl %eax, -8(%rbp)       # Guarda o valor em eax na variável local x
	
	movsbl %sil, %ecx         # Carrega o valor char em sil, o converte para int em ecx
	imull $4, %ecx            # Multiplica ecx por 4
	subl %ecx, -8(%rbp)       # Subtrai o valor em ecx de x
	movl -8(%rbp), %edx       # Carrega o valor de x para edx
	
	movl %edx, -16(%rbp)      # Guarda o resultado em y
	movl -16(%rbp), %r8d      # Carrega o valor de y para r8d
	
	movl %r8d, (%rdi)         # Copia o valor em r8d para rdi (p1)
	
	# epílogo
	movq %rbp, %rsp           # Restaura o ponteiro da pilha
	popq %rbp                 # Restaura o ponteiro da base da pilha
	ret

call_decr:
	# prólogo
	pushq %rbp                # Guarda o ponteiro da base da pilha
	movq %rsp, %rbp           # Atualiza o ponteiro da base da pilha
	subq $16, %rsp            # Aloca 16 bytes na pilha para duas variáveis locais
	
	addw $3, %di              # Adiciona 3 ao valor em di
	movw %di, -8(%rbp)        # Guarda o valor em di na primeira variável local
	
	leaq -8(%rbp), %rdi       # Converte o endereço da primeira variável local em rdi
	movb $0x3C, %sil          # Carrega o valor 0x3C em sil
	
	pushq %rcx
	pushq %rax
	pushq %r8
	pushq %r9
	
	call decr                 # Chama a função decr
	
	movl %eax, -16(%rbp)      # Guarda o resultado da chamada de decr na segunda variável local
	
	popq %r9
	popq %r8
	popq %rax
	popq %rcx
	
	movswl -8(%rbp), %eax     # Carrega o valor da primeira variável local para eax
	addl -16(%rbp), %eax      # Adiciona o valor da segunda variável local a eax
	
	# epílogo
	movq %rbp, %rsp           # Restaura o ponteiro da pilha
	popq %rbp                 # Restaura o ponteiro da base da pilha
	ret

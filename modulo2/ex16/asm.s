.section .data
	.global num            #variavel global
	
	
.section .text
	.global steps          #function
	
steps:
	movq num(%rip), %rax     #move o num para o register rax
	
	movq $3, %rcx            #define o valor de rcx como 3
	cqto
	idivq %rcx				# A- Divide rax por 3
	
	addq $6, %rax			#B- Adiciona 6 ao rax
	
	movq $3, %rcx
	imulq %rcx				# C - Multiplica rax por 3
	
	addq $12, %rax			#D -Adiciona 12 ao rax
	
	movq num(%rip), %rcx
	subq %rcx, %rax			#E-Subtrai num ao rax
	
	subq $4, %rax			#F- Subtrai 4 ao rax
	
	ret                     #retorna o resultado em eax
	
	


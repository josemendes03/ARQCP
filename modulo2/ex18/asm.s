.section .data
	.global n				#n global
	.equ A, 3				# A = 3
	.equ B, 4				#B = 4

.section .text
	.global sigma 	
	
sigma:

	movl n(%rip), %r8d		#mov n para r8d
	cmpl $0, %r8d			#comparator entre o registo e o valor 0
	jle seZero				#caso n seja menor ou igual a 0, dá jump para seZero
	movl $1, %r9d			#i passa para r9d e fica = 9
	movl $A, %eax			#A move para eax
	cqto					#extende o sinal de %eax a %edx
	movl $B, %ecx			#B fica no ecx
	movl $0, %esi			#total
	jmp num_iteracao		#jump para num_iteracao

loop:
	imull $A,%eax 					#multiplica A por A (A^2)
	imull $A,%eax 					#faz o resultado anterior x A, ou seja, A^2 * A = A^3
	idivl %ecx 						#divide o resultado anterior por ecx    A^3 / B


	imull %r9d 						#A^3 / B x i
	imull %r9d  					#(A^3 / B x i) x i, ou seja, x i^2


	addl %eax, %esi 				#add eax a esi, ou seja, o resultado vaio para o total

	movl $A, %eax 					#limpa eax e A
	incl %r9d						#aumenta 1 a rd9 (i+1)
	
num_iteracao:
	cmpl %r8d, %r9d					#comparator entre r8d e r9d, n e i
	jle loop						#se n <= i, jump para "loop"
	jg fim							#se n>i, jump para "fim"
	ret

fim:
	movl %esi, %eax					#total passa para eax
	ret

seZero:
	movl $0,%eax					#move 0 para eax
	ret

.section .data
	.global op1 
	.global op2
	
.global op3	
op3:
	.quad 5
		
.global op4
op4:
	.quad 1
	
	
.section .text
	.global yet_another_sum             #funçao declarada como global

yet_another_sum:
	movq op3(%rip), %rax 				# move o op3 para o rax
	movq op4(%rip), %rcx 				# move o op4 para o rcx
	
	addq %rcx, %rax 					#adiciona os registos e obtem o resultado (op3 + op4), fica no rax
	
	movslq op2(%rip), %rdx 				# move op2 para o rdx 
	
	subq %rdx, %rax 					# rax - rdx, (op3 + op4)-op2, fica no rax
	subq %rdx, %rax 					# rax - rcx, ((op3 + op4) - op2) - op2, fica no rax
	
	movslq op1(%rip), %rdx 				# move o op1 para o rdx, muda o size para quad
	
	addq %rdx, %rax 					#rdx + rax -  (op4 + op3 - op2 - op2) + op1, fica no rax
	subq %rcx, %rax 					#rax - rcx, resultado final no rax
	
	ret   								#retorna o valor no rax

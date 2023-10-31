.section .data
	.global A
	.global B
	
.section .text
	.global isMultiple
	
isMultiple:

	movl A(%rip), %eax                       #move A para eax
	movl B(%rip), %ecx 						# move B para ecx
	cltd 									# converte B, em %eax, para um signed double long em edx
	cmpl $0, %ecx 							# comparator para ver se B é 0
	jne not_null 							# se B != 0, jump para "not_null"
	jmp end 								# se B for 0 dá jump para end
	
	
not_null:

	idivl %ecx 								# divide %ecx
	cmpl $0, %edx 							# compara o resto em edx, com 0
	je multiple 							# se for zero, dá jump para "multiple"
	movl $0, %eax							# se nao, define eax com 0
	jmp end 
	
multiple:

	movl $1, %eax 							# define eax com o valor 1
	jmp end
	
end:
	ret

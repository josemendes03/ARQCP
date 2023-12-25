.section .data

.section .text
    .global vec_sum_even

vec_sum_even:

    movl $0, %r9d 		# Vai funcionar como counter
    movl $0,%r8d 		# a soma vai ficar no r8d


vec_sum_even_loop:

    cmpl %r9d, %esi 	# Comparamos %r9d com %esi, para verificar se estamos no fim do array(o array é o 2 parametro)
    jle end  			# se o counter for less or equal acaba

    pushq %rdi 			# Guarda o rdi na stack
    movl (%rdi),%edi
    call test_even 
    popq %rdi 			# Restaura o valor do rdi

    cmpl $1, %eax 		# compare eax com 1
    je addOnSumEven 	#se for equal, jump para addOnSumEven

    addq $4, %rdi  		# passa para o proximo elemento do array (4 é o tamanho de cada elemento)
    incl %r9d  			# Incrementa o counter em r9d

    jmp vec_sum_even_loop

addOnSumEven:

    addl (%rdi),%r8d 	# Adicione o valor a soma em r8d
    addq $4, %rdi 		# Próximo elemento do array
    incl %r9d  			# Incrementa o counter

    jmp vec_sum_even_loop 

end:
    movl %r8d, %eax 	# Move a soma que está em %r8d para %eax
    
    ret					#return do eax

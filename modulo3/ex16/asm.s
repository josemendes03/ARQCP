.section .data

.section .text
    .global swap

swap:
    mov %rdx, %rax 			# move o num (3 parametro) para o rax
    cmpl $0, %eax 			# compara se eax está a 0, vazio
    je end 					# caso seja equals a 0, jump para end
    jmp switch 				# se nao avança para o switch

switch:
    movb (%rdi), %cl 		# move o pointer do array1 para o cl
    movb (%rsi), %dl 		# move o pointer do array2 para o dl
    movb %dl, (%rdi) 		# move o elemento do array1 para o dl(troca)
    movb %cl, (%rsi) 		# move o elemento do array2 para o cl(troca)
    incq %rdi 				# incrementa no rdi(avança no array1)
    incq %rsi 				# incrementa no rsi(avança no array2)
    decl %eax 				# desincrementa o num que está no eax
    cmpl $0, %eax 			# se o num for 0, acaba
    jnz switch				# if not zero, contnua para o switch
    jmp end 				

end:    
    ret						#return eax

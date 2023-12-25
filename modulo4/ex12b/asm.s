.section .note.GNU-stack,"",@progbits	# removes the warning " missing .note.GNU-stack section"

# count_bits_zero.s
# parameters and registers:
# long x no rdi
# return no rax

.section .text
    .global count_bits_zero

count_bits_zero:
    xor %rax, %rax          	# inicializa o contador de bits inativos a 0	
    mov $64, %r8				# inicializa o contador de bits a 64 (long)
    
not_over:
	cmpq $0, %r8				#compare entre 0 e r8
	je end						#se o r8 estiver a 0, nao ha mais bits no long para verificar
	jmp bit_loop				#jump incondicional para o bit_loop
    
bit_loop:
    testq $1, %rdi          	# operacao logica AND entre 1 e rdi
    jnz  bit_one            	# se não for zero, pula para bit_one
    jz bit_zero					# se for zero, pula para bit_zero
       
bit_zero:
    shrq $1, %rdi           	# shift para a direita, para verificar o proximo bit
    inc %rax					# incrementa o contador de bits inativos
    dec %r8						# desincrementa o contador de bits(64--)
    jmp not_over            	# se ainda houverem bits para verificar (not zero), jump para o inicio do loop

bit_one:
    shrq $1, %rdi           	# shift para a direita, para verificar o proximo bit
    dec %r8						# desincrementa o contador de bits(64--)
    jmp not_over           	    # se ainda houverem bits para verificar (not zero), jump para o inicio do loop
    
end:
    ret                     	# return em rax

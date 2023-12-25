.section .text
	.global encrypt

#rdi é o ptr, pela convencao dos registers face aos parametros

encrypt:
	movl $0, %eax 			#define eax com o valor 0
	
iterate_string:
	movb (%rdi), %cl 		#move um byte do rdi para o cl
	testb %cl, %cl			#verifica se o cl é 0
	jz str_loop_end         #se for 0, jump para o end
	
	cmpb $'a', %cl
	je new_character # se for "a" salta para new_character
	cmpb $' ', %cl
	je new_character # se for " " salta para new_character
	jmp add_char     # caso nao seja nenhum deles, jump para add_char


add_char:
    addb $1, %cl	#adiciona um ao caracter 
    movb %cl, (%rdi) # Store the incremented value back into memory
    addl $1, %eax
    
new_character:
  inc %rdi
  jmp iterate_string


str_loop_end:
	ret

.section .text

.global str_copy_roman

str_copy_roman:
  movb (%rdi), %cl 			#move um byte do rdi para o cl
  
  testb %cl, %cl    		#Se for 0, jump para o loop_end
  jz str_loop_end
  
  cmpb $'u', %cl 			#verifica se o byte é "u"
  jne next_char 			#Se for diferente, avança para o proximo byte
  movb $'v', %cl 			#coloca v no local do u

next_char:
  movb %cl, (%rsi) 			#move o cl para a string final passada por parametro
  
  
  inc %rsi   				#incrementa
  inc %rdi					#incrementa
  jmp str_copy_roman

str_loop_end:
  movb $0, (%rsi) 			#fim da string
  ret

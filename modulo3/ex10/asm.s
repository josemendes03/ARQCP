.section .text
	.global str_cat

str_cat:
	movb (%rdi), %cl		#mov (copia) 1 parametro que fica no rdi para o cl
	movb %cl, (%rdx)		#copia o cl para o rdx
	
	cmpb $0, %cl			#compare se o cl está a 0
	je put_ptr2				#if equals, jump para put_ptr2
	
	incq %rdi				#incrementa o rdi
	incq %rdx				#incrementa o rdx
	jmp str_cat
	
put_ptr2:
	movb (%rsi), %cl		#mov bit de rsi para cl
	movb %cl, (%rdx)		#mov cl para rdx
	
	cmpb $0, %cl			#comparator que ve se cl está a 0
	je end					#if equals, jump para end
	
	incq %rsi				#incrementa rsi
	incq %rdx				#incrementa rdx
	jmp put_ptr2			#jump para put_ptr2
	
end:
	ret						#return
	

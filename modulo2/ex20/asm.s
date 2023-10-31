.section .data
    .global num  	

.section .text
    .global check_num  
    .global even_negative  
    .global even_positive  
    .global negative  

check_num:
    movsbl num(%rip), %eax  	# move o num para o eax

    testl %eax, %eax  			# testa se eax é 0 ou negativo
    js negative  				# se eax for negativo dá jump para "negative"

    testl $1, %eax  			# testa se eax é par ou impar
    jz even_positive  			# se for even, faz jump para "even_positive"

    movb $4, %al  				# define al com o valor 4
    ret  

even_negative:
    movb $1, %al  				# define al com valor 1
    ret  # Return
    
negative:
    testl $1, %eax  			# testa se eax é par ou impar
    jz even_negative 			# se eax for even, faz jump para "even_negative"

    movb $2, %al  				# define al com valor 2 
    ret 

even_positive:
    movb $3, %al  				# define al com valor 3
    ret 



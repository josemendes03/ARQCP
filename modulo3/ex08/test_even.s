.section .text

    .global test_even

test_even:
	movl %edi, %eax 			# mov o número que vem por parâmetro para %eax para dividir
    movl $2,%r10d 				# move 2 para %r10d
    cltd 						# Estende o sinal do registo eax (32bits) para um registo de 64 bits (edx:eax)
    idivl %r10d 				# Divide o valor que está em %eax (2)
	cmpl $0, %edx 				# compare edx com 0
	je isEven 					# caso seja equal, jump para isEven
	movl $0, %eax 				# define eax a 0

    jmp end 					# Jump end

isEven:
    movl $1, %eax 				# define eax com o valor 1
	jmp end 					# Jump end

end:
	ret							#return do eax

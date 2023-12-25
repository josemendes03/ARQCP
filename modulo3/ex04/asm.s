.section .data
    .equ addThree, 3
    .equ addBytes, 2
    
 .section .text
 
	.global vec_add_three
	
vec_add_three:

	testq %rsi, %rsi         #se o n de elementos do arr for 0, jmp para o end
	jz end
	
loop:
	addw $addThree,(%rdi)    #adiciona 3 ao rdi
	addq $addBytes, %rdi	 #passa para o proximo elemento do array (adicionamos 3 previamente)
	decq %rsi				 #subtrai ao numero de elementos do array
	jg loop     		     #jump if greater - volta ao loop se o n de elementos for maior que 0
	
end:
	ret

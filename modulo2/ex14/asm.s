.section .data
	.global length1
	.global length2
	.global height

length1:
	.int 6

length2:
	.int 8

height:
	.int 3
	
.section .text
	.global getArea

getArea:
    movswl length1(%rip), %eax    #move os 16bits para o registo eax
    movswl length2(%rip), %ecx    #move os 16 bits para o ecx
    addl %ecx, %eax               #adiciona os, ficando o resultado em eax
    
    movswl height(%rip), %ecx     #move os 16bits para ecx
    
    mull %ecx                     #multiplica eax por ecx e guarda em eax
    movl $2, %ecx                 #define o ecx com o valor 2
    divl %ecx                     #divide o eax por ecx, ficando o quociente/resultado em eax

	ret                            #retorna eax

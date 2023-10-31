.section .data
    .global i
    .global j

.section .text
    .global f1  
    .global f2  
    .global f3  
    .global f4   

f1:
    movl i(%rip), %eax      #move i para eax
    movl j(%rip), %ecx      #move j para ecx
    cmpl %eax, %ecx         #compare
    je igual                #se for igual, dá jump para "igual"
    addl %ecx, %eax			#adiciona os regsitos
    subl $1, %eax			#faz a subtracao
    jmp final 				#salta para o "final"
igual:
    subl %ecx, %eax
    addl $1, %eax
	 jmp final 
	 
f2:
    movl i(%rip), %eax		#move i para eax
    movl j(%rip), %ecx		#move j para ecx
    cmpl %eax, %ecx			#comparator
    jl maior				
    incl %ecx
    imull %ecx, %eax		#multiplica ecx com eax
    jmp final

maior:
    decl %eax
    imull %ecx, %eax
    jmp final


f3:
    movl i(%rip), %eax			#move i para eax
    movl j(%rip), %ecx			#move j para o ecx

    cmpl %eax, %ecx				#comparator
    jle maiorIgual

    movl %eax, %edx     
    addl %ecx, %eax
    addl $2, %eax      

    addl %edx, %ecx    

    cdq
    idivl %ecx
    jmp final

maiorIgual:
    imull %eax, %ecx
    incl %eax
    cdq
    idivl %ecx
    jmp final

f4:
    movl i(%rip), %eax
    movl j(%rip), %ecx
    addl %eax, %edx
    addl %ecx, %edx
    cmpl $10, %edx
    jl somaMenor
    movl %ecx, %eax
    imull %eax, %eax
    movl $3, %ecx
    cqto
    idivl %ecx
    jmp final

somaMenor:
    imull %eax, %eax
    imull $4, %eax
    jmp final
    
final:
	ret

.section .text
.global sum_sub

sum_sub:
    # parameters and registers: num1 in %rdi, num2 in %rsi, ptrsub in %rdx
    # sum in %eax, subtraction result in ptrsub (int result in c)
    
    movl %edi, %r8d   # guarda num1 em %r8d
    addl %esi, %r8d   # Adiciona num2(esi) a num1(r8d) e guarda o resultado em %r8d
    movl %r8d, %eax   # Move o resultado da adição para %eax, para retornar no fim da funcao
    
    subl %esi, %edi   # Subtrai num2(esi) a num1(edi) e armazena o resultado em %edi
    movl %edi, (%rdx) # guarda a subtraçao (edi) no endereço de memória apontado por %rdx
    
    ret

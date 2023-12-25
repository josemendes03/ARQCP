.section .note.GNU-stack,"",@progbits  #evita o warning da staxk


.section .data
    .global a   
    .global b	
    .global pos	

.section .text
    .global join_bits

join_bits:
    xor %rcx, %rcx     #limpa o rcx
    movsbl %dl, %edx   # Converte o byte em dl para um inteiro de 32 bits em edx

    cmpl $63, %edx     # compare
    je final         # if equals jmp wn 

    incl %edx          # Incrementa pos
    movl $64, %r8d     # Inicializa r8d com 64
    subl %edx, %r8d    # Calcula r8d = 64 - pos
    jmp first_loop 

first_loop:
    shrq $1, %rdi      # Desloca a direita o valor de a
    incl %ecx          # Incrementa o contador
    cmpl %ecx, %r8d    # Compara o contador com r8d (64 - pos)
    je segundo         # Se forem iguais,sai
    jmp first_loop 

segundo:
    xorl %ecx, %ecx    # Zera o contador em ecx
    jmp second_loop

second_loop:
    salq $1, %rsi      # shift
    incl %ecx          # Inc
    cmpl %ecx, %edx    # Compara o contador com pos
    je end             # if equals jmp finale
    jmp second_loop  

end:
    xorq %rax, %rax    # reset rax
    orq %rsi, %rdi     # operação OR entre rdi e rsi
    movq %rdi, %rax    # Move rdi para rax
    ret                

final:
    xorq %rax, %rax    # Zera o valor de retorno (rax)
    movq %rdi, %rax    # Move rdi para rax
    ret                

.section .note.GNU-stack,"",@progbits  #evita o warning da staxk

.section .text
	.global set_bit  

set_bit:

    pushq %rbp        
    movq %rsp, %rbp  
                         # long tem 64bits
    cmp $63, %rsi     	 # Compara o valor em %rsi com 63
    jg invalid_position  # Salta para a posição inválida se %rsi > 63

    cmp $0, %rsi      	 # Compara o valor em %rsi com 0
    jl invalid_position  # Salta para a posição inválida se %rsi < 0
    
    jmp is_valid
    
 is_valid:

    movq $1, %rax        # Coloca 1 em %rax
    mov %rsi, %rcx       # Move a posição do bit para o registrador de contagem %rcx
    shl %cl, %rax        # Desloca 1 bit para a esquerda por %rsi posições para criar a máscara

    test %rax, (%rdi)    # Testa se o bit está definido no inteiro longo apontado
    jnz bit_is_already_seted  # Salta se o bit já estiver definido

    or %rax, (%rdi)      # Operação OR bitwise para definir o bit
    movq $1, %rax        # Define o valor de retorno como 1, indicando que o bit foi alterado

    movq %rbp, %rsp      
    pop %rbp            

    ret                

invalid_position:
    xor %rax, %rax       # Define o valor de retorno como 0

    movq %rbp, %rsp   
    pop %rbp           

    ret               

bit_is_already_seted:
    movq $0, %rax      # Define o valor de retorno como 0 (bit já estava em 1)

    movq %rbp, %rsp    
    pop %rbp           

    ret               

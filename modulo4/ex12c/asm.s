.section .note.GNU-stack,"",@progbits	# removes the warning " missing .note.GNU-stack section"

# count_bits_zero.s
# parameters and registers:
# long x no rdi
# return no rax

.section .text
    .global count_bits_zero

count_bits_zero:
    push %rax                   # guarda o registrador %rax na pilha
    push %rdi                   # guarda o registrador %rdi na pilha
    push %r8                    # guarda o registrador %r8 na pilha
    
    xor %rax, %rax              # Inicializa o contador de bits inativos a 0	
    mov $32, %r8                # Inicializa o contador de bits a 64 (long)
    
not_over:
    cmpq $0, %r8                # Compara entre 0 e %r8
    je end                      # Se %r8 estiver a 0, não há mais bits no long para verificar
    jmp bit_loop                # jmp incondicional para o bit_loop
    
bit_loop:
    testq $1, %rdi              # Operação lógica AND entre 1 e %rdi
    jnz  bit_one                # Se não for zero, jmp para bit_one
    jz bit_zero                 # Se for zero, jmp para bit_zero
       
bit_zero:
    shrq $1, %rdi               # Desloca %rdi para a direita, para verificar o próximo bit
    inc %rax                    # Incrementa o contador de bits inativos
    dec %r8                     # Desincrementa o contador de bits (64--)
    jmp not_over                # Se ainda houverem bits para verificar (not zero), jmp para o início do loop

bit_one:
    shrq $1, %rdi               # Desloca %rdi para a direita, para verificar o próximo bit
    dec %r8                     # Desincrementa o contador de bits (64--)
    jmp not_over                # Se ainda houverem bits para verificar (not zero), salta para o início do loop
    
end:
    pop %r8                     # Restaura o registrador %r8 da pilha
    pop %rdi                    # Restaura o registrador %rdi da pilha
    pop %rax                    # Restaura o registrador %rax da pilha
    ret                        


# vec_count_bits_zero.s
# parameters and registers:
# int *ptr em rdi
# int num em esi
# return em rax

.section .text
    .global vec_count_bits_zero

vec_count_bits_zero:
    xor %rax, %rax               # Inicializa o contador total de bits inativos a 0
    mov %esi, %ecx               # Configura o contador para o número de elementos no vetor
    
vec_loop:
    test %ecx, %ecx               # Testa se ainda há elementos no vetor
    je end_vec                   # Se não houver mais elementos, pule para o final
    
    mov (%rdi), %rdi             # Obtém o próximo elemento do vetor
    call count_bits_zero         # Chama a função count_bits_zero
    add %rax, %rax               # Adiciona o resultado ao contador total
    
    inc %rdi                     # Avança para o próximo elemento do vetor
    dec %ecx                     # Decrementa o contador de elementos
    jmp vec_loop                 # jmp de volta para o início do loop
    
end_vec:
    ret                          # Retorna com o resultado total em rax

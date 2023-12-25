.section .data

.section .text
    .global sort_without_reps 
    .global check_duped
    .global order

# Função para ordenar elementos do array sem repetições
sort_without_reps:
    leaq (%rsi), %r11               # Carrega o ponteiro de rsi (1º argumento) para r11
    movl $0, %r10d                   # Define r10d como 0 (contador para elementos únicos)

# Mover elementos não duplicados para o array de destino
move_unduped_loop:
    cmpl $0, %edx                    # Verifica se edx é 0
    je end_move_unduped_loop         # If equaqls, jumpi para end_move_unduped_loop
    movw (%rdi), %cx                 # Move o valor em ptr para cx
    call check_duped                 # Chama check_duped
    cmpl $0, %eax                    # Verifica se eax é 0
    je move_unduped                  # if equals, jump para move_unduped
    addq $2, %rdi                    # Avança 2 posições em ptr
    decl %edx                        # Desincrementa edx (reduz o num de elementos)
    jmp move_unduped_loop            # jump para move_unduped_loop

move_unduped:
    movw %cx, (%rsi)                 # Move cx para o array de destino
    addq $2, %rdi                    # Incrementa ptrsrc
    addq $2, %rsi                    # Incrementa ptrdest
    decl %edx                        # Desincrementa a contagem de elementos
    incl %r10d                       # Incrementa r10d (contagem de elementos únicos)
    jmp move_unduped_loop            # Jump para move_unduped_loop

end_move_unduped_loop:
    movl %r10d, %eax                 # Move r10d para eax
    jmp order                        # Jump para a função order

# Função para verificar elementos duplicados
check_duped:
    leaq (%r11), %r8                  # Carrega ptrdest em r8
    movl %r10d,%r9d                   # Move o valor de r10d para r9d
    movl $0, %eax                     # Define eax como 0

check_duped_loop:
    cmpl $0, %r9d                     # Verifica se r9d é 0
    je end                            # if equals pula para end
    cmpw (%r8), %cx                   # Compara o valor de ptrdest com cx
    je num_exists                     # if equals, pula para num_exists
    addq $2, %r8                      # Incrementa ptrdest em 2
    decl %r9d                         # Desincrementa r9d em 1
    jmp check_duped_loop              # Jump para check_duped_loop

num_exists:
    movl $1, %eax                     # Define eax como 1
    je end                            # jump para end

# Função para ordenar em ordem ascendente
order:
    leaq (%r11), %rdi                 # Carrega ptrdest em rdi
    movl %eax, %edx                   # Move o valor de eax para edx
    movl $0, %r9d                     # Define r9d como 0

first_loop:
    cmpl $0, %edx                     # Verifica se edx é 0
    je end                            # Se edx for 0, pula para end
    subl $1, %edx                     # Desincrementa edx em 1
    movl %edx, %r9d                   # Move o valor de edx para r9d
    jmp second_loop                   # jump para second_loop

second_loop:
    cmpl $0, %r9d                     # Verifica se r9d é 0
    je end_second_loop                # if equals, pula para end_second_loop
    movw (%rdi), %cx                  # Carrega o valor de ptrdest em cx
    movw %cx, %r10w                   # Move o valor de cx para r10w
    addq $2, %rdi                     # Incrementa ptrdest em 2
    movw (%rdi), %cx                  # Carrega o valor de ptrdest em cx
    movw %cx, %r11w                   # Move o valor de cx para r11w
    cmpw %r10w, %r11w                 # Compara o valor de r10w com r11w
    jl change                         # Se r10w for menor que r11w, jump para change
    decl %r9d                         # Desincrementa r9d em 1
    jmp second_loop                   # jump para second_loop

change:
    subq $2, %rdi                      # Decrementa ptrdest em 2
    movw %r11w, (%rdi)                 # Move o valor de r11w para ptrdest
    addq $2, %rdi                      # Incrementa ptrdest em 2
    movw %r10w, (%rdi)                 # Move o valor de r10w para ptrdest
    decl %r9d                          # Decrementa r9d em 1
    jmp second_loop                    # jump para second_loop

end_second_loop:
    movl %edx, %r9d                    # Move o valor de edx para r9d
    jmp reset                          # jump para reset

reset:
    cmp $0, %r9d                       # Compara r9d com 0
    je first_loop                      # if equals, pula para first_loop
    subq $2, %rdi                      # Desincrementa ptrdest em 2
    decl %r9d                          # Decsinrementa r9d em 1
    jmp reset                          # jump para reset

end:
    ret                                # Return

.section .text
    .global decrypt

decrypt:
    movl $0, %eax          # Define eax to 0

iterate_string:
    movb (%rdi), %cl       # Move um byte do rdi para o cl
    testb %cl, %cl         # Verifica se o cl é 0
    jz str_loop_end        # Se for 0, jump para o end

    cmpb $'a', %cl
    je new_character       # Se for "a" salta para new_character
    cmpb $' ', %cl
    je new_character       # Se for " " salta para new_character
    jmp sub_char           # Caso não seja nenhum deles, jump para sub_char

sub_char:
    subb $1, %cl          # Subtrai um do caracter
    movb %cl, (%rdi)      # Store the decremented value back into memory
    addl $1, %eax

new_character:
    inc %rdi
    jmp iterate_string

str_loop_end:
    ret

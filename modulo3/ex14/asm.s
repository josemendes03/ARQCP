.section .data

.section .text
	.global exists 
	.global vec_diff 

exists:
    movl $0, %eax     # poe eax a 0
    movl $0, %r8d     # poe r8d a 0

exists_loop:
    cmpl %r8d, %esi   	# comparaor a ver se os registers sao iguais
    je end_exists_loop # if equals, jump para end_exists_loop
    cmpl (%rdi), %edx # comparator de rdi e edx
    je num_exists     # if equals, jump para num_exists
    addq $4, %rdi     # incrementa rdi por 4, que é o tamanho de cd elemento do array
    incl %r8d         # incrementa r8d por 1
    jmp exists_loop   # jump exists_loop

num_exists:
    cmpl $1, %eax      # comparator eax é 1
    je end             # if equals jump para end
    incl %eax          # incrementa eax por 1
    addq $4, %rdi      # incrementa rdi por 4, o tamanho de cada elemento no array
    incl %r8d          # incrementa r8d por 1
    jmp exists_loop    # jump para exists_loop

end_exists_loop:
    cmpl $1, %eax      # comparator que verifica se eax é 1
    je end_exists      # if equals, jump para end_exists
    jmp end            # jump para end

end_exists:
    movl $0, %eax      # define eax a 0
    jmp end            # jump end

vec_diff:
    leaq (%rdi), %rcx  # Carrega o endereço de rdi em rcx
    leaq (%rdi), %r10  # Carrega o endereço de rdi em r10
    movl $0, %r9d      # define r9d a 0
    movl $0, %r11d     # define r11d a 0

vec_diff_loop:
    cmpl %r11d, %esi   #comparaor a ver se os registers sao iguais
    je end_vec_diff_loop # if equals, jump para end_vec_diff_loop
    movl (%rcx), %edx  # Mov o valor em rcx para o edx
    leaq (%r10), %rdi  # Carrega o endereço de r10 no rdi
    call exists        # Chama a função exists
    cmpl $0, %eax      # comparaor a ver se eax está a 0
    je vec_diff_incq   # if equals, jump para vec_diff_incq
    addq $4, %rcx      # incrementa rcx por 4
    incl %r11d         # incrementa r11d por 1
    jmp vec_diff_loop  # jump para vec_diff_loop

vec_diff_incq:
    incl %r9d          # incrementa r9d por 1
    addq $4, %rcx      # incrementa rcx por 4
    incl %r11d         # incrementa r11d por 1
    jmp vec_diff_loop  # jump para vec_diff_loop

end_vec_diff_loop:
    movl %r9d, %eax    # mov de r9d para eax
    jmp end            # jump para end

end:
    ret                # Return

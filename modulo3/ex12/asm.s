.section .data

.section .text
    .global vec_zero

vec_zero:

    movq %rdi, %rcx     # move o ptrvec para o rcx
    movq %rsi, %rdx     # move o num de elementos mudados para o rdx
    movb $0, %al        # inicializa o contador de elementos mudados a 0  

    iterate:

        testq %rdx, %rdx  # verifica se ja estao todos mudados
        je end            # se ja estiverem todos, jump para o fim

        cmpl $50, (%rcx)  # compare com 50 como pedido
        jl not_greater    # se for menor, jump para not_greater

    replace:
        movl $0, (%rcx)    # substitui o elemento por 0
        incb %al           # incrementa a contagem

    not_greater:
        addq $4, %rcx      # incrementa no pointer 4, que é o tamanho de cada elemento, para avançar para o proximo do array
        decq %rdx          # desincrementa o counter de elementos
        jmp iterate        # repete o iterate

    end:
        ret				   #return

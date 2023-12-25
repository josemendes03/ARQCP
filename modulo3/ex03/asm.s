.section .text

.global str_copy_roman2

str_copy_roman2:

    cmpq $0, %rdi
    je end

loop:


    cmpb $'u', (%rdi)

    je replace_lower_case

    cmpb $'U', (%rdi)

    je replace_upper_case

    movb (%rdi), %al

    movb %al, (%rsi)

    cmpb $0, %al
    je end

    incq  %rdi
    incq  %rsi
    jmp loop

replace_lower_case:
    movb $'v', (%rsi)
    addq $1, %rdi
    addq $1, %rsi
    jmp loop

replace_upper_case:
    movb $'V', (%rsi)
    addq $1, %rdi
    addq $1, %rsi
    jmp loop

end:
    ret

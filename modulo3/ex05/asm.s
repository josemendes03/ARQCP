.section .text
    .global vec_sum

vec_sum:

    movq $0, %rax
    movq $0, %rcx

 loop:

        cmpw %cx, %si
        je end

        addw $1, %cx

        addl (%rdi), %eax

        addq $4, %rdi

        jmp loop

  end:
     ret

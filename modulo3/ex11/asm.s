.section .text
.global vec_greater12

vec_greater12:

        movq $0, %rax

	cmpq $0,%rsi
	je size_null

loop:

        cmpq $0, %rsi
        je end

	cmpl $12, (%rdi)
	jg greater12

	addq $4,%rdi

        subq $1, %rsi

	jmp loop

size_null:

	movq $0,%rax
	jmp end

greater12:

	addq $1, %rax
	jmp continue

continue:

       addq $4,%rdi

       cmpq $0, %rsi
       je end

       subq $1, %rsi

       jmp loop

end:
	ret

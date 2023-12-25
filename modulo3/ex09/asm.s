.section .text
.global vec_search

vec_search:

       cmpq $0,%rsi
       je size_null

       
loop:

	cmpl %edx,(%rdi)
	je found

	addq $4,%rdi

	cmpq $0, %rsi
	je not_found

    subq $1, %rsi

	jmp loop

not_found:

     movq $0, %rax
     jmp end


size_null:

	movq $0,%rax
	jmp end

found:
	leaq (%rdi), %rax
	jmp end

end:
	ret



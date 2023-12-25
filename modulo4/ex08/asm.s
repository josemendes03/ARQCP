.section .text
    .global calc           #defines calc function
    
    # int a no rdi
    # int *b no rsi
    # int c no rdx
    
calc:
    mov $4, %r8
    imul %r8, %rdi	 #4 x a(%rdi)
    mov (%rsi), %r11 # *b -> %r11	
    add %r11, %rdi   # (a x 4)(rdi) + b(r11)
    
    mov %rdx, %r9    #c -> r9
    subq $6, %r9	 #r9 -6
    imul %r9, %rdi	 #r9 x rdi
    
    mov %rdi, %rax	#mov rdi para o rax para retornar
    
    ret

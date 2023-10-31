.section .data
	.global A
	.global B
	.global C
	.global D
  
.section .text
	.global sum_and_subtract

sum_and_subtract:

     movl A(%rip), %eax
     movslq %eax, %rax

     movb B(%rip), %dil
     movsbq %dil, %rdi

     movw C(%rip), %cx
     movswq %cx, %rcx

     movw D(%rip), %dx
     movswq %dx, %rdx

     subq %rax, %rcx
     addq %rcx, %rdx
     
     subq %rdi, %rdx

     movq %rdx,%rax
     
     ret


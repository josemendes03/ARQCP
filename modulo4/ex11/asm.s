.section .text
	.global call_proc
	.global proc
	
call_proc:

   pushq %rbp
   movq %rsp, %rbp
   subq $32, %rsp
   
   movl %edi, -8(%rbp)
   movl %esi, -16(%rbp)
   movw %dx, -24(%rbp)
   movb %cl, -32(%rbp)
   
   movl -8(%rbp), %edi
   leaq -8(%rbp), %rsi
    movl -16(%rbp), %edx
   leaq -16(%rbp), %rcx
    movw -24(%rbp), %r8w
   leaq -24(%rbp), %r9
    movb -32(%rbp), %r10b
   leaq -32(%rbp), %r11	

     pushq %r10
     pushq %r11
     
     call proc
     
     popq %r10
     popq %r11
     
     movl (%rsi), %eax
     addl (%rcx), %eax
     
     movswl (%r9), %edi
     movsbl -32(%rbp), %ecx
     subl %ecx, %edi
     
     imul %edi
     
     movq %rbp, %rsp
     popq %rbp 
     ret



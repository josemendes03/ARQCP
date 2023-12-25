.section .text
   .global d_square
   
d_square:

       movslq %edi, %rdi
       movq %rdi, %rax
       imulq %rdi, %rax
       imulq $2, %rax
      
       ret
       
       

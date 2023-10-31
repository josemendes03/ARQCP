.section .data

        .global A

        .global B

        .global C

        .global D

.section .text

    .global compute

  compute: 

     movl A(%rip), %eax

     movl B(%rip), %edi

     movl C(%rip), %ecx

     movl D(%rip), %edx

     cmpl $0, %edx
     je division_zero
    
     imull %eax, %edi

     imull %ecx, %eax

     subl %eax, %edi

     movl %edi, %eax

     cdq

     idivl %edx
     
     jmp end

     division_zero:
       movl $0, %eax
       jmp end
       
     end: 
        ret  
      
      

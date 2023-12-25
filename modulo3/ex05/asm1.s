.section .text

       .global vec_avg

vec_avg:
       
       call vec_sum
       
       movswl %si, %esi
       
       movl %esi, %ecx
       
       cmpl $0,%esi
       je division_zero
       
       cdq

       idivl %ecx

       jmp end
             
division_zero:
      movl $0,%eax

end:
        ret

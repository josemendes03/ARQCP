.section .data
    .global current 
    .global desired
    .equ decrease_HotCold, 240
    .equ increase_HotCold, 180
    
.section .text 
       .global needed_time    
  
  needed_time:
  
     movb current(%rip), %al
     movsbl %al, %eax
     
     movb desired(%rip), %cl
     movsbl %cl, %ecx     
     
     cmpl %eax, %ecx
     jg increase_temperature
     jl decrease_temperature
     je equal_temperature
     
     increase_temperature:
       subl %eax, %ecx
       movl %ecx, %eax
       imull $increase_HotCold, %eax
       jmp end
             
     decrease_temperature:
       subl %ecx, %eax
       imull $decrease_HotCold, %eax
       jmp end
     
     
     equal_temperature:
       movl $0, %eax
       jmp end
     
    
     end:
       ret
       
     
     
     

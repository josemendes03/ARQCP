.section .data
    .global code
    .global currentSalary

.section .text
    .global new_salary
    
    
    new_salary:
    
     movw code(%rip), %cx
     movswl %cx, %ecx
     
     movw currentSalary(%rip), %ax
     movswl %ax, %eax
     
     cmpl $10, %ecx
     je salary_manager
     
     cmpl $11, %ecx
     je salary_engineer
     
     cmpl $12, %ecx
     je salary_technician
     
     jmp all_other_positions
        
     salary_manager:         
         addl $500, %eax
         jmp end 
     
     salary_engineer:
         addl $400, %eax
         jmp end 
     
      salary_technician:
         addl $300, %eax
         jmp end
         
      all_other_positions:
         addl $250, %eax
         jmp end
     
      end:
      ret

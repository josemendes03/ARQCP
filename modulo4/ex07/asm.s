.section .text
	.global count_even
	
count_even:    
     movq $0, %r8
     cmpq $0, %rsi
     je end
     jmp loop

loop: 
  
   cmpq $0, %rsi
   je end
    
   movw (%rdi), %ax
   movw $2, %cx
   
   cwd
  
   idivw %cx
   
   cmpw $0, %dx
   je even 
 
continue:
   addq $2, %rdi  
   subq $1, %rsi

   jmp loop

even:
    addq $1, %r8
    jmp continue

end:
    movl %r8d, %eax 
	ret

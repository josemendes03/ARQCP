.section .text

	.global add_byte
	
add_byte:
     movl (%rsi), %eax
     movl %eax, (%rdx)     	
     
     addq $4, %rsi
     addq $4, %rdx	
     
loop:

      cmpl $0,%eax
      je end
      
      movl (%rsi), %ecx
      movl %ecx, (%rdx)
    
      movb 1(%rdx), %cl
      addb %dil, %cl
      
      andl $0xFFFF00FF,(%rdx)
      orb %cl, 1(%rdx)
      
     addq $4, %rsi
     addq $4, %rdx
     subl $1, %eax	
      
     jmp loop 
          
end:
		ret
      

          

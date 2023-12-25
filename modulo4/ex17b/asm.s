.section .text
	.global greater_date
	

greater_date:
      movl %edi, %eax
      movl %edi, %ecx
      movl %esi, %edx
      	
      shr $16, %edx
      andl $0xFFFF, %edx
      shr $16, %ecx	
      andl $0xFFFF, %ecx
      
      cmpw %cx, %dx
      jg date2
      jl date1
      
      
      movl %edi, %ecx
      movl %esi, %edx
        	
      shr $8, %edx
      andl $0xFF,%edx
      shr $8, %ecx	
      andl $0xFF,%ecx            
      
      cmpw %cx, %dx
      jg date2
      jl date1
     	   
      movl %edi, %ecx
      movl %esi, %edx	   
     	   
      andl $0x000000FF,%edx
      andl $0x000000FF,%ecx
      
      cmpb %cl, %dl
      jg date2
      jl date1

date2:
    movl %esi, %eax
	jmp end

date1:
    movl %edi, %eax
	jmp end

end:
	ret

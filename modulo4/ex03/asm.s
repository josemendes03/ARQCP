.section .text
	.global greatest

greatest:

     movw %di, %ax
     cmpw %ax, %si
     jg b_greater
     
     jmp continue

b_greater:
      movw %si, %ax
      jmp continue
      
continue:
 	   cmpw %ax, %dx
 	   jg c_greater
 	   
 	   jmp end
 	   
c_greater:
      movw %dx, %ax
      jmp end	   
 	        
end:
	ret

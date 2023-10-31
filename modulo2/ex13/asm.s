.section .text
	.global getArea

getArea:
 
      movw length1(%rip), %ax
      movswq %ax, %rax
      
      movw length2(%rip), %dx
      movswq %dx, %rdx

      movw height(%rip), %cx
      movswq %cx, %rcx 
      
      addq %rdx,%rax
      mulq %rcx
      
      movq $2, %rcx
      divq %rcx
      
      ret

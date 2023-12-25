.section .text
	.global inc_and_cube

inc_and_cube:

     incw (%rdi)
     
     movswl %si, %esi
     movl %esi, %eax
     
     imull %esi, %eax
     imull %esi, %eax	
     
     ret

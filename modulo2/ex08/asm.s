.section .data
	.global s1
	.global s2
    
s1:
	.short 5
	
s2:
	.short 9

.section .text
	.global crossSubBytes

crossSubBytes:
	movw s1(%rip), %cx 
	movw s2(%rip), %dx 
	subb %dl, %ch 
    subb %dh, %cl 
    
    movw %cx, %ax

    ret

.section .text
.global five_count

# Function to count the number of occurrences of '5' in a string
five_count:
    
    movq $0, %rax

loop:
    cmpb $0, (%rdi)  
    je end

    cmpb $'5', (%rdi)
    jne not_five

    addq $1, %rax

not_five:
    addq $1, %rdi
    jmp loop

end:
    ret

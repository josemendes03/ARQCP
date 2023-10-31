.section .data

.global op1
.global op2

.section .text

.global exchangeBytes  # short exchangeBytes(short op1, short op2)

.section .data
    .global op1
    .global op2

.section .text
    .global exchangeBytes

exchangeBytes:
    movw op1(%rip), %ax  # move o op1 para o ax
    movw op2(%rip), %cx  # move o op2 para o cx 
    movb %ch, %dl       # copia ch para dl
    movb %al, %dh       # copia al para dh
    addb %dh, %dh       # adiciona dh a dh (dobro)
    movb %dl, %al       # copia dh para o al
    movb %dh, %ah       # copia dh para ah
    
    ret                 # retorna o resultado

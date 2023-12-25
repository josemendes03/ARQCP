.section .data
    
.section .text
    .global count_max

count_max:
   
    movq %rsi, %rdx 			# move o num para o rdx  (1 parametro)
    subq $2, %rdx 				# subtrai 2 ao rdx(num-2)
    movq $0, %rcx 				# define o rcx a 0, vai ser o indice do arr
    movl $0, %eax 				# define o eax a 0, vai ser o contador

    cmpq $2, %rsi 				# comparator de rsi e 2
    jle end 					# se for less or equal, jump to end

    loop_start:
    
        cmpq %rdx, %rcx  		# compara o index em rcx com o rdx que é o num-2
        jg end 					# if greater, jump para end


        movl (%rdi, %rcx, 4), %r8d 					# move o arr[index] para o r8d
        movl 4(%rdi, %rcx, 4), %r9d 				# move o arr[index+1] para o r9d
        movl 8(%rdi, %rcx, 4), %r10d 				#  move o arr[index+2] para o r10d

        cmpq %r8, %r9 								# if arr[index] < arrc[index + 1]
        jl first_condition 							# if less, jump first_condition

        incq %rcx 									# incrementa o indice em rcx

    jmp loop_start

    first_condition:
        cmpq %r9, %r10 								# if arr[index + 1] > arr[index + 2]
        jg second_condition 						# if is greater, jump para second_condition
        incq %rcx 									# increemnta o indice em rcx
    jmp loop_start

    second_condition:
        addl $1, %eax 								# incrementa o contador
        incq %rcx 									# incrementa o index em rcx
    jmp loop_start


end:
    ret

ex06: main.o asm.o 
	gcc main.o asm.o -z noexecstack -o ex06

main.o : main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o : asm.s 
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o

run : ex06
	./ex06

clean: 
	rm -fv *.o ex06

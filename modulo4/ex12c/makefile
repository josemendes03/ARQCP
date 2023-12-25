ex12c: main.o asm.o
	gcc main.o asm.o -o ex12c

main.o : main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
asm.o : asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o
	
run : ex12c
	./ex12c

clean:
	rm -fv *.o ex12c

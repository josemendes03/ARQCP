ex10: main.o asm.o 
	gcc main.o asm.o -o ex10

main.o : main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o : asm.s 
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o

run : ex10
	./ex10

clean:
	rm -fv *.o ex10

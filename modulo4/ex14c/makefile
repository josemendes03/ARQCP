ex14c: main.o asm.o
	gcc main.o asm.o -o ex14c

main.o : main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
asm.o : asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o
	
run : ex14c
	./ex14c

clean:
	rm -fv *.o ex14c

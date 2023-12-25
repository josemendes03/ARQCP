ex18b: main.o asm.o
	gcc main.o asm.o -o ex18b

main.o : main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
asm.o : asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o
	
run : ex18b
	./ex18b

clean:
	rm -fv *.o ex18b

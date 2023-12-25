main: asm1.o asm.o main.o
	gcc asm.o asm1.o main.o -o main

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o: asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o

asm1.o: asm1.s
	gcc -g -Wall -Wextra -fanalyzer -c asm1.s -o asm1.o

clean:
	rm -f *.o main

run: main
	./main

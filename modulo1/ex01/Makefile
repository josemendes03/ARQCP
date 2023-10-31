# A simple Makefile
prog_main: main.o
	gcc main.o -o prog_main
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_main

run: prog_main
	./prog_main

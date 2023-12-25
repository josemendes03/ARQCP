# A simple Makefile
prog_reset: reset_bits.o main.o
	gcc reset_bits.o main.o -o prog_reset

reset_bits.o: reset_bits.c
	gcc -g -Wall -Wextra -fanalyzer -c reset_bits.c -o reset_bits.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_reset

run: prog_reset
	./prog_reset

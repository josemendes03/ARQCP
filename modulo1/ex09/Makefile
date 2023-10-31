# A simple Makefile
prog_sum_integer_bytes: sum_integer_bytes.o main.o
	gcc sum_integer_bytes.o main.o -o prog_sum_integer_bytes

sum_integer_bytes.o: sum_integer_bytes.c
	gcc -g -Wall -Wextra -fanalyzer -c sum_integer_bytes.c -o sum_integer_bytes.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_sum_integer_bytes

run: prog_sum_integer_bytes
	./prog_sum_integer_bytes

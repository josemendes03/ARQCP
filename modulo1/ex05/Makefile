# A simple Makefile
prog_sum_even: sum_even.o main.o
	gcc sum_even.o main.o -o prog_sum_even

sum_even.o: sum_even.c
	gcc -g -Wall -Wextra -fanalyzer -c sum_even.c -o sum_even.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_sum_even

run: prog_sum_even
	./prog_sum_even

# A simple Makefile
prog_sum_odd: sum_odd.o main.o
	gcc sum_odd.o main.o -o prog_sum_odd

sum_odd.o: sum_odd.c
	gcc -g -Wall -Wextra -fanalyzer -c sum_odd.c -o sum_odd.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_sum_odd

run: prog_sum_odd
	./prog_sum_odd

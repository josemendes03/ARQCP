# A simple Makefile
prog_get_array_statistics: get_array_statistics.o main.o
	gcc get_array_statistics.o main.o -o prog_get_array_statistics

get_array_statistics.o: get_array_statistics.c
	gcc -g -Wall -Wextra -fanalyzer -c get_array_statistics.c -o get_array_statistics.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_get_array_statistics

run: prog_get_array_statistics
	./prog_get_array_statistics

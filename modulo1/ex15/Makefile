# A simple Makefile
prog_trim_string: trim_string.o main.o
	gcc trim_string.o main.o -o prog_trim_string

trim_string.o: trim_string.c
	gcc -g -Wall -Wextra -fanalyzer -c trim_string.c -o trim_string.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_trim_string

run: prog_trim_string
	./prog_trim_string

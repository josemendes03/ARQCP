# A simple Makefile
prog_rotates: rotate_left.o rotate_right.o main.o
	gcc rotate_left.o rotate_right.o main.o -o prog_rotates

rotate_left.o: rotate_left.c
	gcc -g -Wall -Wextra -fanalyzer -c rotate_left.c -o rotate_left.o

rotate_right.o: rotate_right.c
	gcc -g -Wall -Wextra -fanalyzer -c rotate_right.c -o rotate_right.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_rotates

run: prog_rotates
	./prog_rotates

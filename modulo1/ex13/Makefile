# A simple Makefile
prog_sort_without_reps: sort_without_reps.o main.o
	gcc sort_without_reps.o main.o -o prog_sort_without_reps

sort_without_reps.o: sort_without_reps.c
	gcc -g -Wall -Wextra -fanalyzer -c sort_without_reps.c -o sort_without_reps.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o prog_sort_without_reps

run: prog_sort_without_reps
	./prog_sort_without_reps

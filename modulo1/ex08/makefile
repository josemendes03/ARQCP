ex08: swap_values.o main.o
	gcc swap_values.o main.o -o ex08

swap_values.o: swap_values.c
	gcc -g -Wall -Wextra -fanalyzer -c swap_values.c -o swap_values.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex08
	
run: ex08
	./ex08

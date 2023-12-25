ex20a: main.o sum_multiples_x.o
	gcc main.o sum_multiples_x.o -o ex20a

main.o: main.c sum_multiples_x.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

sum_multiples_x.o: sum_multiples_x.c
	gcc -g -Wall -Wextra -fanalyzer -c sum_multiples_x.c -o sum_multiples_x.o

run: ex20a
	./ex20a

clean:
	rm -fv *.o ex20a

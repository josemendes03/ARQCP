ex18a: main.o changes.o
	gcc main.o changes.o -o ex18a

main.o: main.c changes.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

changes.o: changes.c
	gcc -g -Wall -Wextra -fanalyzer -c changes.c -o changes.o

run: ex18a
	./ex18a

clean:
	rm -fv *.o ex18a

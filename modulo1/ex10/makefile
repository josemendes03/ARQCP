ex10: iterateOnStr.o main.o
	gcc iterateOnStr.o main.o -o ex10

iterateOnStr.o: iterateOnStr.c
	gcc -g -Wall -Wextra -fanalyzer -c iterateOnStr.c -o iterateOnStr.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex10

run: ex10
	./ex10

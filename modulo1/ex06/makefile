ex06: printString.o capitalize2.o main.o
	gcc printString.o capitalize2.o main.o -o ex06

capitalize2.o: capitalize2.c
	gcc -g -Wall -Wextra -fanalyzer -c capitalize2.c -o capitalize2.o

printString.o: printString.c
	gcc -g -Wall -Wextra -fanalyzer -c printString.c -o printString.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex06

run: ex06
	./ex06
					

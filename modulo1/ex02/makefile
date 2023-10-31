ex02: print.o main.o
	gcc print.o main.o -o ex02

print.o: print.c
	gcc -g -Wall -Wextra -fanalyzer -c print.c -o print.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex02

run: ex02
	./ex02

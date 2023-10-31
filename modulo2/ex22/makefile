ex22: main.o functions.o asm.o
	gcc functions.o asm.o main.o -z noexecstack -o ex22

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

functions.o: functions.c
	gcc -g -Wall -Wextra -fanalyzer -c functions.c -o functions.o

asm.o: asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o

run: ex22
	./ex22

clean:
	rm -f *.o ex22

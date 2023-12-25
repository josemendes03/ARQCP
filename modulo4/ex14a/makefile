ex14a: main.o set_bit.o 
	gcc main.o set_bit.o -z noexecstack -o ex14a

main.o : main.c set_bit.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

set_bit.o : set_bit.c
	gcc -g -Wall -Wextra -fanalyzer -c set_bit.c -o set_bit.o

run : ex14a
	./ex14a

clean:
	rm -fv *.o ex14a

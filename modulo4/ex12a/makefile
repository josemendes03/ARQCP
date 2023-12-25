ex12a: main.o count_bits_zero.o
	gcc main.o count_bits_zero.o -o ex12a

main.o : main.c count_bits_zero.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
count_bits_zero.o : count_bits_zero.c
	gcc -g -Wall -Wextra -fanalyzer -c count_bits_zero.c count_bits_zero.o
	
run : ex12a
	./ex12a

clean:
	rm -fv *.o ex12a

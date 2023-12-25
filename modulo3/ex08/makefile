ex08: main.o test_even.o vec_sum_even.o
	gcc main.o test_even.o vec_sum_even.o -z noexecstack -o ex08

main.o : main.c test_even.h vec_sum_even.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

test_even.o : test_even.s 
	gcc -g -Wall -Wextra -fanalyzer -c test_even.s -o test_even.o
	
vec_sum_even.o : vec_sum_even.s
	gcc -g -Wall -Wextra -fanalyzer -c vec_sum_even.s -o vec_sum_even.o

run : ex08
	./ex08

clean:
	rm -fv *.o ex08

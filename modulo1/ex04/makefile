ex04: copy_vet.o print_vet.o  main.o
	gcc copy_vet.o print_vet.o main.o -o ex04

copy_vet.o: copy_vet.c
	gcc -g -Wall -Wextra -fanalyzer -c copy_vet.c -o copy_vet.o

print_vet.o: print_vet.c
	gcc -g -Wall -Wextra -fanalyzer -c print_vet.c -o print_vet.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex04

run: ex04
	./ex04

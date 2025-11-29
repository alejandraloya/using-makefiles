CFLAGS = -Wall -Wextra -pedantic

all: my_program

my_program: main.c arith_utils.c
	gcc $(CFLAGS) main.c arith_utils.c -o my_program

run: all
	./my_program

clean:
	rm -f my_program

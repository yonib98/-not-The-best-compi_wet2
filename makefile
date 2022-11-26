CC=g++
CFLAGS=-std=c++17
OBJ = lex.yy.c parser.tab.cpp

make: lex bison
	$(CC) -std=c++17 lex.yy.c parser.tab.cpp output.cpp -o test.out
	cp test.out ./segel_files/compi_hw2_tests_improved/hw2
lex:
	flex scanner.lex
bison:
	bison -d parser.ypp
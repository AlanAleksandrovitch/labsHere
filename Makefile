.PHONY: all, clean

all: program
program: main.o BST.o
	g++ main.o BST.o -o test
main.o: main.cpp BST.h
	g++ -c main.cpp
BST.o: BST.cpp BST.h
	g++ -c BST.cpp
clean:
	rm -f main.o BST.o test


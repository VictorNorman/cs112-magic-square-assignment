all: clean test

lab2: tests.cpp functions.cpp
	g++ --std=c++11 tests.cpp functions.cpp -o lab2

test: lab2
	# executes all tests
	./lab2

clean:
	rm -f lab2 *.gch

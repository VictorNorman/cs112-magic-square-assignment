/*
 * main.cpp
 *
 */

#include <iostream>
using namespace std;

const unsigned MAX_SIZE = 15;

int main(int argc, char *argv[]) {
	unsigned size;

    // If the size is on the command line, use it.  I.e., if the user runs
	// 		./magic_square 5,
	// then the program makes a square of size 5 without asking for the size.
	if (argc > 1) {
		size = atoi(argv[1]);
	} else {
		// ask for size of square
		cout << "Let's generate a magic square." << endl;
		cout << "Enter an odd number (<= 15) for the number of rows and columns: ";
		cin >> size;
	}

	// your code here.

	return 0;
}



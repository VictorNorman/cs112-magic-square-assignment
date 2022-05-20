# all: clean test

# SRC=*.cpp

# lab2: tests.cpp functions.cpp
# 	g++ --std=c++11  -o magic_square

# test: magic_square
# 	# executes all tests
# 	./magic_square

# clean:
# 	rm -f magic_square *.gch


# project name (generate executable with this name)
TARGET   = magic_square

CPP       = g++ --std=c++11 -c
# compiling flags here
CPPFLAGS   = -Wall -I.

LINKER   = g++ -o
# linking flags here
LFLAGS   = -Wall

SOURCES  := $(wildcard *.cpp)
INCLUDES := $(wildcard *.h)
OBJECTS  := $(SOURCES:.cpp=*.o)
rm       = rm -f

$(TARGET): obj
	@$(LINKER) $(TARGET) $(LFLAGS) $(OBJECTS)
	@echo "Linking complete!"

obj: $(SOURCES) $(INCLUDES)
	@$(CPP) $(CPPFLAGS) $(SOURCES)
	@echo "Compilation complete!"

clean:
	@$(rm) $(TARGET) $(OBJECTS)
	@echo "Cleanup complete!"
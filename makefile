CXX     = g++
CXXFLAG = -Wall -Werror -std=c++17

OBJECTS = main.o


all: program

program: $(OBJECTS)
	$(CXX) $(CXXFLAG) -o $@ $<

main.o: main.cpp
	$(CXX) $(CXXFLAG) -c $<

.PHONY: clean

clean:
	del main.o program.exe
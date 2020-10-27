# This will compile all files ( starting at main command )
all: hello_world

#### ADD YOUR COMMAND HERE ####
hello.o: src/hello.cpp
	if [ -d "./build" ]; then ""; else mkdir build; fi
	g++ -o build/hello.o -c src/hello.cpp

hello_world: hello.o main
	g++ -o build/hello_world build/hello.o build/main.o
###############################

# This will compile the main.cpp file
main: src/main.cpp
	g++ -o build/main.o -c src/main.cpp

# This will clean all .o files
clean: 
	rm -rf build/*.o

# This will also clean the main file
mrproper: clean
	rm -rf build/main build/hello build/hello_world
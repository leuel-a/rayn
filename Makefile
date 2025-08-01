CC=g++

CXXFLAGS=\
	-I$(HOME)/.nvm/versions/node/v20.19.4/include/node\
	-Wall\
	-Wextra\
	-pedantic\
	-fPIC\
	-shared\
	-std=c++20\

LIBS=\
     -l:libraylib.a\

OUTPUT=raylib.node

INPUT=raylib.cpp

$(OUTPUT): $(INPUT) 
	$(CC) $(CXXFLAGS) -o $(OUTPUT) $(INPUT) 

CC=g++

RAYLIB_INCLUDE_PATH=/opt/raylib/lib
RAYLIB_H_INCLUDE_PATH=/opt/raylib/include

CXXFLAGS=\
	-I$(HOME)/.nvm/versions/node/v20.19.4/include/node\
	-I$(RAYLIB_H_INCLUDE_PATH)\
	-Wall\
	-Wextra\
	-pedantic\
	-fPIC\
	-shared\
	-std=c++20\

LIBS=\
     -L$(RAYLIB_INCLUDE_PATH)\
     -l:libraylib.a\

OUTPUT=raylib.node

INPUT=raylib.cpp

$(OUTPUT): $(INPUT) 
	$(CC) $(CXXFLAGS) -o $(OUTPUT) $(INPUT) $(LIBS)

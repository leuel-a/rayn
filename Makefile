CC=g++

CXXFLAGS=\
	-I$(HOME)/.nvm/versions/node/v20.19.4/include/node\
	-Wall\
	-Wextra\
	-pedantic\
	-fPIC\
	-std=c++20\

OUTPUT=bindings.node

INPUT=bindings.cpp

$(OUTPUT): $(INPUT) 
	$(CC) $(CXXFLAGS) -o $(OUTPUT) -shared $(INPUT) 

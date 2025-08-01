cmake_minimum_required(VERSION 3.15)
project(rayn LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories("$ENV{HOME}/.nvm/versions/node/v20.19.4/include/node")
include_directories("$ENV{HOME}/probe/raylib/src")

add_library(bindings MODULE bindings.cpp)

set_target_properties(bindings PROPERTIES
	PREFIX ""
	SUFFIX ".node"
)

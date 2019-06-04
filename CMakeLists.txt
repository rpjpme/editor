cmake_minimum_required(VERSION 2.8.9)
project(editor)

include_directories(include)
# One way to add the source files:
#set(SOURCES src/edit.cpp src/window.cpp)
#or file(GLOB)

file(GLOB SOURCES "src/*.cpp")
add_executable(editor ${SOURCES})
target_link_libraries(editor ncursesw)

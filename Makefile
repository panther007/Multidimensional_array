#Project Name
PRJ_NAME = Array

#Target Name of the prj
TARGET = Array

#Objects of project
OBJS = \
  test_Array.o

#Source files
SRC = \
  Array.hpp\
  test_Array.cpp

.PHONY: clean debug pack clang

CC = g++
CPPFLAGS = -g -Wall -std=c++11 -Wextra -pedantic
LDFLAGS= -pthread

#%.o: %.cpp %.hpp
#	$(CC) $(CPPFLAGS) $(LDFLAGS) -c $< -o $@

#build the prj
$(TARGET):  test_Array.cpp
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $< -o $@

#build the debug enabled object
debug: CPPFLAGS = -g -Wall -std=c++11 -DDEBUG
debug: test_Array.cpp
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $< -o $(TARGET)

#build the using clang++
clang: CC = clang++
clang: test_Array.cpp
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $< -o $(TARGET)

#clean the objects
clean:
	rm -rf $(OBJS) $(TARGET) $(PRJ_NAME).tar.gz *~



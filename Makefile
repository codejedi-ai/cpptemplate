# C compiler (adjust as needed)
CC = gcc

# C compiler flags (adjust as needed)
CFLAGS = -Wall -Wextra

# C++ compiler (adjust as needed)
CXX = g++

# C++ compiler flags (adjust as needed)
CXXFLAGS = -std=c++14 -Wall -MMD

# Source files
CSRCS := $(wildcard *.c)
CXXSRCS := $(wildcard *.cpp)

# Object files
COBJS := $(patsubst %.c, %.o, $(CSRCS))
CXXOBJS := $(patsubst %.cpp, %.o, $(CXXSRCS))

# Target program (adjust as needed)
PROGRAM = my_program
# All object files (combined for C and C++)
OBJECTS = $(COBJS) $(CXXOBJS)
# Linking step (adjust as needed)
$(PROGRAM): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $(PROGRAM)



# Include dependency files (if using -MMD flag)
DEPENDS = $(patsubst %.c, %.d, $(CSRCS)) $(patsubst %.cpp, %.d, $(CXXSRCS))
-include $(DEPENDS)

# Clean rule
.PHONY: clean
clean:
	rm -f $(OBJECTS) $(PROGRAM) $(DEPENDS)

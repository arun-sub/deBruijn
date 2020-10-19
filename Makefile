CXX     = g++
LIBS = -Lhtslib -lz -lm -lbz2 -llzma -lpthread 
CXXFLAGS   = -g -Wall -O2 -fopenmp
INC = -Ihtslib

all: debruijn.cpp common.cpp common.h
	$(CXX) debruijn.cpp common.cpp htslib/libhts.a $(CXXFLAGS) $(INC) $(LIBS) -o debruijn

clean: 
	rm debruijn

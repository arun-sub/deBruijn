#CXX     = g++
CXX		 = icpc
VTUNE_HOME= /opt/intel/vtune_profiler
LIBS = -Lhtslib -lz -lm -lbz2 -llzma -lpthread -L${VTUNE_HOME}/lib64 -littnotify -fopenmp
CXXFLAGS   = -g -Wall -O2 -fopenmp
INC = -Ihtslib -I${VTUNE_HOME}/include

all: debruijn.cpp common.cpp common.h
	$(CXX) debruijn.cpp common.cpp htslib/libhts.a $(CXXFLAGS) $(INC) $(LIBS) -o debruijn

clean: 
	rm debruijn

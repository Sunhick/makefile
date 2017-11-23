# common stuff here
CC := g++
AR = ar
CFLAGS = -std=c++1z -fno-inline -Wall -Werror -Wextra -Wfloat-equal -Wshadow \
	 -Wpointer-arith -Wcast-qual -Wcast-align -Wwrite-strings  	     \
	 -Wno-conversion -Wdisabled-optimization -Wredundant-decls  	     \
	 -Wunused-value -Wno-deprecated -g -O0
LDFLAGS =

CRUFT = $(wildcard *.c~ *.cc~ *.cpp~ *.h~ *.c.BAK *.h.BAK *.o *.a *.so *.dylib *.bc)

%.o : %.cc
	$(CC) -c $< ${CFLAGS}

.PHONY : decruft
decruft :
	$(RM) -- ${CRUFT}

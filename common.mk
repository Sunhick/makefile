# common stuff here
CC := g++
AR = ar
CCFLAGS = -g
MATH_LIB = math
GRAPHICS_LIB = graphics

CRUFT = $(wildcard *.c~ *.h~ *.c.BAK *.h.BAK *.o *.a *.so *.dylib *.bc)

%.o : %.cc
	$(CC) -c $<

.PHONY : decruft
decruft :
	$(RM) -- ${CRUFT}

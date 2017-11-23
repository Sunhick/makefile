# 
# make file
#

SRCS=$(wildcard *.cc)
OBJS=$(SRCS:.cc=.o)

.PHONY : all
all : libmath2 libgraphics main

include common.mk
CRUFT += main

.PHONY: libmath2
libmath2:
	$(MAKE) -C math

.PHONY: libgraphics
libgraphics:
	${MAKE} -C graphics

main : $(OBJS)
	$(CC) $? -o $@ -L ${MATH_LIB} -lmath2 -L ${GRAPHICS_LIB} -lgraphics

.PHONY :clean
clean : decruft
	$(MAKE) -C math decruft
	${MAKE} -C graphics decruft

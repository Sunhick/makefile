SRCS=$(wildcard *.cc)
OBJS=$(SRCS:.cc=.o)

.PHONY : all
all : libgraphics.a

include ../common.mk
CRUFT += libgraphics.a

libgraphics.a : ${OBJS}
	ar rvs libgraphics.a ${OBJS}

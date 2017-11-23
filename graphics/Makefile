SRCS=$(wildcard *.cc)
OBJS=$(SRCS:.cc=.o)

CRUFT += libgraphics.a

.PHONY : all
all : libgraphics.a

include ../common.mk

libgraphics.a : ${OBJS}
	ar rvs libgraphics.a ${OBJS}

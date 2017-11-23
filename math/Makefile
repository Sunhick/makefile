SRCS=$(wildcard *.cc)
OBJS=$(SRCS:.cc=.o)
CRUFT += libmath2.a

# for debugging uncomment below lines
# $(info srcs=$(SRCS))
# $(info obs=$(OBJS))
.PHONY : all
all: libmath2.a

include ../common.mk

libmath2.a : ${OBJS}
	$(AR) rvs libmath2.a $(OBJS)

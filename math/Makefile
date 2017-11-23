SRCS=$(wildcard *.cc)
OBJS=$(SRCS:.cc=.o)


# for debugging uncomment below lines
# $(info srcs=$(SRCS))
# $(info obs=$(OBJS))
.PHONY : all
all: libmath2.a

include ../common.mk
CRUFT += libmath2.a

libmath2.a : ${OBJS}
	$(AR) rvs libmath2.a $(OBJS)

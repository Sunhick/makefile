# 
# make file
#

SRCS=$(wildcard *.cc)
OBJS=$(SRCS:.cc=.o)

ifndef LIBS_ROOT
	export LIBS_ROOT = $(shell echo "`pwd`/libs")
endif

.PHONY : all
all : libs main

include common.mk
CRUFT += main

.PHONY : libs
libs :
	${MAKE} -C math
	${MAKE} -C graphics
	${MAKE} -C libs

main : $(OBJS)
	$(CC) $? -o $@ -L ${LIBS_ROOT} -lmath2 -lgraphics

.PHONY : clean
clean : decruft
	${MAKE} -C libs decruft
	$(MAKE) -C math decruft
	${MAKE} -C graphics decruft

#
# Makefile - building the root project 
#
# Copyright (c) 2017 Sunil
# 

SRCS=$(wildcard *.cc)
OBJS=$(SRCS:.cc=.o)

ifndef LIBS_ROOT
	export LIBS_ROOT = $(shell echo "`pwd`/libs")
endif

.PHONY : all
all : sub-modules libs main depend

include common.mk
CRUFT += main

.PHONY : libs
libs :
	$(Q) ${MAKE} -C math
	$(Q) ${MAKE} -C graphics
	$(Q) ${MAKE} -C config
	$(Q) ${MAKE} -C libs

.PHONY : sub-modules
sub-modules :
	${MAKE} -C modules

main : $(OBJS)
	$(E) "  LINK - " $@
	$(Q) $(CC) $^ -o $@ -L ${LIBS_ROOT} -lmath2 -lgraphics -lconfig2

.PHONY : clean
clean : decruft
	$(Q) ${MAKE} -C libs clean
	$(Q) $(MAKE) -C math decruft
	$(Q) ${MAKE} -C graphics decruft
	$(Q) ${MAKE} -C modules clean

.PHONY : depend
depend: deps
	$(Q) ${MAKE} -C math deps
	$(Q) ${MAKE} -C graphics deps

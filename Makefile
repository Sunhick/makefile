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
all : libs main depend

include common.mk
CRUFT += main

.PHONY : libs
libs :
	$(Q) ${MAKE} -C math
	$(Q) ${MAKE} -C graphics
	$(Q) ${MAKE} -C libs
	$(Q) ${MAKE} -C config

main : $(OBJS)
	$(E) "  LINK - " $@
	$(Q) $(CC) $^ -o $@ -L ${LIBS_ROOT} -lmath2 -lgraphics -lconfig2

.PHONY : clean
clean : decruft
	$(Q) ${MAKE} -C libs decruft
	$(Q) $(MAKE) -C math decruft
	$(Q) ${MAKE} -C graphics decruft

.PHONY : depend
depend: deps
	$(Q) ${MAKE} -C math deps
	$(Q) ${MAKE} -C graphics deps

#
# common.mk - generic setup for makefile
#
# Copyright (c) 2017 Sunil
#

# run make file in silent mode by default
Q = @
E = @echo

CC := g++
AR = ar
CFLAGS = -std=c++1z -fno-inline -Wall -Werror -Wextra -Wfloat-equal -Wshadow \
	 -Wpointer-arith -Wcast-qual -Wcast-align -Wwrite-strings  	     \
	 -Wno-conversion -Wdisabled-optimization -Wredundant-decls  	     \
	 -Wunused-value -Wno-deprecated -g -O0
LDFLAGS =

CRUFT = $(wildcard *.c~ *.cc~ *.cpp~ *.h~ *.c.BAK *.h.BAK *.o *.a *.so *.dylib *.bc .depends)

# include auto generated header deps
-include .depends

%.o : %.cc
	@echo "  CC - " $@
	$(Q) $(CC) -c $< ${CFLAGS}

.PHONY : decruft
decruft :
	$(Q) $(RM) -- ${CRUFT}

.PHONY : deps
deps:
	$(Q) for i in *.cc; do $(CC) ${CFLAGS} -MMD -MP -MF $$i.dep -c $$i; done
	$(Q) cat *.dep > .depends
	$(Q) -$(RM) -- *.dep

#
# Makefile - for making libraries
#
# Copyright (c) 2017 Sunil
# 

MATH_OBJS := $(wildcard ../math/*.o)
GRAPHICS_OBJS := $(wildcard ../graphics/*.o)
CONFIG_OBJS := $(wildcard ../config/*.o)
CONFIG_DIRS := include lib share

.PHONY : all
all : libmath2.a libgraphics.a libconfig2.a

CONFIG_LDFLAGS += -L ./lib/ -lconfig

include ../common.mk
CRUFT += libmath2.a libgraphics.a libconfig2.a

libmath2.a : ${MATH_OBJS}
	$(call make_lib, $@, $^)

libgraphics.a : ${GRAPHICS_OBJS}
	$(call make_lib, $@, $^)

libconfig2.a : ${CONFIG_OBJS}
	$(call make_lib, $@, $^, ${CONFIG_LDFLAGS})

.PHONY : clean
clean : decruft
	$(Q) $(RM) -rf ${CONFIG_DIRS}

# Make static library from arguments
# $1 - library name
# $2 - list of object files
define make_lib
	$(E) "  AR - " $(1)
	$(Q) $(AR) rc $(1) $(2) $(3)
endef

MATH_OBJS := $(wildcard ../math/*.o)
GRAPHICS_OBJS := $(wildcard ../graphics/*.o)

.PHONY : all
all : libmath2.a libgraphics.a

include ../common.mk
CRUFT += libmath2.a libgraphics.a

libmath2.a : ${MATH_OBJS}
	@echo ${MATH_OBJS}
	$(AR) rvs libmath2.a ${MATH_OBJS}

libgraphics.a : ${GRAPHICS_OBJS}
	ar rvs libgraphics.a ${GRAPHICS_OBJS}

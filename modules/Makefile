.PHONY : all
all :
	cd libconfig && autoreconf && ./configure --prefix=${LIBS_ROOT} && make install

.PHONY : clean
clean :
	cd libconfig && ${MAKE} clean

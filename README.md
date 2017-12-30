# Makefile
Make file tutorial

# Features
* Modularize makefiles and putting common stuff in a separate makefile.
* Recursive makefiles
* Auto dependency in make file. ```make depends```
* git submodule for libconfig. ```make -C modules```. submodules are automatically build and installed to libs folder when ```make``` is issued on the root folder.

# Precompiled headers
* gcc supports precompiled headers. This makes the build faster however it can lead to problems. 
* Problem - you have foo.h and you precompile it ```gcc foo.h``` that produces ```foo.h.gch```. Now, when you compile the project containing foo.h, it will use the precompiled header instead even if you change the header file. Fix: delete the gch file or precompile the header again. 

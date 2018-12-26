#!/bin/bash
# gcc -sharedlib main.cpp -o bin/Release/DSSleep.so

mingw32-g++.exe -std=c++11 -Wall -DBUILD_DLL -O2  -c DSSleep.cpp -o obj\Release\DSSleep.o
mingw32-g++.exe -shared -Wl,--output-def=bin\Release\libDSSleep.def -Wl,--out-implib=bin\Release\libDSSleep.a -Wl,--dll  obj\Release\DSSleep.o  -o bin\Release\DSSleep.dll -s  -luser32


clang++ -std=c++11 -stdlib=libstdc++ -m32 -Wall -Wno-unknown-pragmas -fPIC -c DSSleep.cpp
clang++ -m32 -shared -Wl,-soname,libDSSleep.so.0 -Wl,-rpath,"\$ORIGIN" -o libDSSleep.so DSSleep.o -L.
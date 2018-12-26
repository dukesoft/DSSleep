#!/bin/bash
# gcc -sharedlib main.cpp -o bin/Release/DSSleep.so

clang++ -std=c++11 -stdlib=libstdc++ -m32 -Wall -Wno-unknown-pragmas -fPIC -c DSSleep.cpp
clang++ -m32 -shared -Wl,-soname,libDSSleep.so.0 -Wl,-rpath,"\$ORIGIN" -o libDSSleep.so DSSleep.o -L.
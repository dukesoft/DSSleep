#!/bin/bash
# gcc -sharedlib main.cpp -o bin/Release/DSSleep.so

#g++ -std=c++11 -Wall -c DSSleep.cpp -o obj\Linux\Release\DSSleep.o
#g++ -shared -Wl,-soname,bin\Linux\Release\libDSSleep -Wl,--out-implib=bin\Linux\Release\libDSSleep.a -Wl,--dll  obj\Linux\Release\DSSleep.o  -o bin\Linux\Release\DSSleep.dll -s  -luser32


#g++ -std=c++11 -stdlib=libstdc++ -m32 -Wall -Wno-unknown-pragmas -fPIC -c DSSleep.cpp
#g++ -m32 -shared -Wl,-soname,libDSSleep.so.0 -Wl,-rpath,"\$ORIGIN" -o libDSSleep.so DSSleep.o -L.

#g++ -std=c++11 -static-libstdc++ -m32 -Wall -fPIC -c DSSleep.cpp
#g++ -m32 -shared -Wl,-soname,libDSSleep.so.0 -Wl,-rpath,"\$ORIGIN" -o libDSSleep.so DSSleep.o -L.

g++ -Wall -fPIC -c DSSleep.cpp
g++ -shared -Wl,-soname,DSSleep.so -o DSSleep.so *.o
rm *.o

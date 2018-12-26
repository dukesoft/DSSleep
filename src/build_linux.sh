#!/bin/bash
g++ -Wall -fPIC -c DSSleep.cpp
g++ -shared -Wl,-soname,DSSleep.so -o DSSleep.so *.o
rm *.o

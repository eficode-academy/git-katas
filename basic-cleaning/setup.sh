#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="basic-cleaning"

makerepo 

echo "// awsome C code " > myapp.c
echo "// awsome C header " > myapp.h

git add myapp.*
git commit -m "C code for my app"

echo "// awsome C library  " > mylib.c

touch myapp.c~
mkdir obj
touch mylib.o mylib.a myapp.o a.out


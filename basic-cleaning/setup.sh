#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="basic-cleaning"

makerepo 
mkdir src

echo "** SOME USEFUL INFO ** " > README.txt
echo "// awsome C code " > src/myapp.c
echo "// awsome C header " > src/myapp.h

git add src/myapp.* README.txt
git commit -m "C code for my app"

echo "// awsome C library  " > src/mylib.c

touch src/myapp.c~ src/oldfile.c~ 
touch README.txt~
mkdir obj
touch obj/mylib.o obj/mylib.a obj/myapp.o obj/a.out


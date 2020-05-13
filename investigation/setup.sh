#!/bin/bash

# Include utils
source ../utils/utils.sh
make-exercise-repo

touch test.md
git add test.md
git commit -m "add test.md"
mkdir src
mkdir src/main
touch src/file.c
touch src/main/main.h
git add src/
git commit -m "Add folders"
echo "This is more data" >> src/main/main.h
git add src/main/main.h
git commit -m "Put data in main.h"
echo "This is also a bunch of data" >> test.md
git add test.md
git commit -m "Fill test.md"


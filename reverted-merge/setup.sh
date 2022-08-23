#!/bin/bash

# Include utils
source ../utils/utils.sh

make-exercise-repo

echo "library-1.2.3" > lib.txt
echo "module using library-1.2.3" > mymodule.txt
git add lib.txt mymodule.txt
git commit -m"Adding module with its library"

git branch integrate-library-1.2.4
git checkout integrate-library-1.2.4

echo "library-1.2.4" > lib.txt
echo "New library functionality" >> lib.txt
echo "module using library-1.2.4" > mymodule.txt
git add lib.txt
git add mymodule.txt
git commit -m"Update to library version 1.2.4"

echo "Use new library functionality" >> mymodule.txt
git add mymodule.txt
git commit -m"Use new functionality in mymodule"


git checkout master
echo "Promising feature X" >> mymodule.txt
git add mymodule.txt
git commit -m"Add feature X"


git merge integrate-library-1.2.4 --no-edit || true
# deal with merge conflict
echo "module using library-1.2.4" > mymodule.txt
echo "Promising feature X" >> mymodule.txt
echo "Use new library functionality" >> mymodule.txt
git add mymodule.txt
git commit -m"Merge integrate-library-1.2.4" --no-edit


echo "Useful feature Y" >> mymodule.txt
git add mymodule.txt
git commit -m"Add feature Y"

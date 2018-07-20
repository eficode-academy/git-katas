#!/bin/bash -e

# Include utils
source ../utils/utils.sh

kata="reverted-merge"
makerepo

if [[ ! `pwd` =~ .*exercise.* ]]; then
  echo "Not in correct directory"
  echo "Exiting to prevent changes from surrounding repository"
  return
fi

echo "library-1.2.3" > lib.txt
echo "module using library-1.2.3" > mymodule.txt
git add lib.txt mymodule.txt
git commit -m"Adding module with its library"

git branch integrate-library-1.2.4
git checkout integrate-library-1.2.4

echo "library-1.2.4" > lib.txt
echo "module using library-1.2.4" > mymodule.txt
git add lib.txt
git add mymodule.txt
git commit -m"Update to library version 1.2.4"

echo "New libarry funtcionality" >> lib.txt
git add lib.txt
git commit -m"Add new library functionality"
echo "Use new library functionality" >> mymodule.txt
git add mymodule.txt
git commit -m"Use new functionality in mymodule"

git checkout master
echo "Add promising feature X" >> mymodule.txt
git add mymodule.txt
git commit -m"Add feature X"

git merge integrate-library-1.2.4 --no-edit
# deal with merge conflict
echo "module using library-1.2.4" > mymodule.txt
echo "Add promising feature X" >> mymodule.txt
echo "Use new library functionality" >> mymodule.txt
git add mymodule.txt
git commit -m"Merge integrate-library-1.2.4" --no-edit

echo "Add useful feature Y" >> mymodule.txt
git add mymodule.txt
git commit -m"Add feature Y"

git revert HEAD~1 -m 1 --no-edit
echo "module using library-1.2.3" > mymodule.txt
echo "Add promising feature X" >> mymodule.txt
echo "Add useful feature Y" >> mymodule.txt
git add mymodule.txt
git commit --no-edit

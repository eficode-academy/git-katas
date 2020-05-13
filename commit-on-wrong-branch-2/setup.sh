#!/bin/bash

# Include utils
source ../utils/utils.sh

make-exercise-repo

echo "Some coode" > myapp.txt
echo "Some other line of code" >> myapp.txt
echo "Another line of code" >> myapp.txt
git add myapp.txt
git commit -m"Initial commit"

git checkout -b new-feature
echo "First part of new awesome feature" >> myapp.txt
git add myapp.txt
git commit -m"Implement first part of feature"

git checkout master
echo "Some code" > myapp.txt
echo "Some other line of code" >> myapp.txt
echo "Another line of code" >> myapp.txt
git add myapp.txt
git commit -m"Fix bug"

echo "Second part of new feature" >> myapp.txt
git add myapp.txt
git commit -m"Implement second part of feature"

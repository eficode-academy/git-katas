#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="kata5-commit-on-wrong-branch"

makerepo 

echo "Initial content of the file" > file.txt

git add file.txt
git commit -m "Initial commit"


echo "this file hos soome tyypposs" > bug.txt

git add bug.txt
git commit -m "add bug.txt"

echo "some changes i made and staged" >> file.txt

git add file.txt

echo "some changes i made and did not stage yet" >> file.txt

echo "a file i was making and did not stage" > fix.txt


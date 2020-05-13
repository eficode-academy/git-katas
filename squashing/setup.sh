#!/bin/bash
kata="kata2-squashing"

# Include utils
source ../utils/utils.sh

make-exercise-repo

touch alsoafile.txt

git add alsoafile.txt
git commit -m "initial file"

echo "This is a relevant fact\n" > file.txt

git add file.txt

git commit -m "Add relevant fact"

echo "This is also relevant\n" >> file.txt

git commit -am "Add more relevancy"

echo "Perhaps this is the most relevant\n" >> file.txt

git commit -am "most relevant!"

echo "This is the prime directive\n" >> file.txt

git commit -am "add prime directive"

echo "NEVER change public history" >> file.txt

git commit -am "add the word!"

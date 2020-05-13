#!/bin/bash
#Include utils
source ../utils/utils.sh

make-bare-remote-repo 
clone-remote-to-exercise

echo "initial" > foo.txt
git add foo.txt
git commit -m "Initial commit"
git tag -m 'Start' START
git push origin master
git push origin START

echo "1" > file1
git add file1
git commit -m "file1"

echo "9" > file9
git add file9
git commit -m "file9"

echo "8" > file8
git add file8
git commit -m "file8"

echo "3" > file3
git add file3
git commit -m "file3"

echo "4" > file4
git add file4
git commit -m "file4"

echo "5" > file5
git add file5
git commit -m "file5"

echo "2" > file2
git add file2
git commit -m "file2"

echo "6" > file6
git add file6
git commit -m "file6"

echo "7" > file7
git add file7
git commit -m "file7"


#!/bin/bash

source ../utils/utils.sh

make-exercise-repo

touch 1.txt
git add 1.txt
git commit -m "1"
git tag first-commit

touch 2.txt
git add 2.txt
git commit -m "2"

touch 3.txt
git add 3.txt
git commit -m "3"

touch 4.txt
git add 4.txt
git commit -m "4"

touch 5.txt
git add 5.txt
git commit -m "5"

touch 6.txt
git add 6.txt
git commit -m "6"

#!/bin/bash

# Source utils
source ../utils/utils.sh

# Prep repo
kata="rebase-multiple-commits"
make-exercise-repo

# Prep branches
echo "hello hello" > greeting1.txt
echo "and welcome" > greeting2.txt
echo "to a rebase exercise" > greeting3.txt
git add .
git commit -m "add greetings"

git checkout -b incremental-change-merge
echo "hello random people" > greeting1.txt
git add greeting1.txt
git commit -m "change 1"
echo "and WELCOME" > greeting2.txt
git add greeting2.txt
git commit -m "change 2"
echo "to a conflict resolving exercise" > greeting3.txt
git add greeting3.txt
git commit -m "change 3"

git checkout -b incremental-change-rebase

git checkout master
echo "hellooooo" > greeting1.txt
echo "AND WELCOME" > greeting2.txt
echo "to a rebase conflict exercise" > greeting3.txt
git add .
git commit -m "master change"

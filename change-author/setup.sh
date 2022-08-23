#!/bin/bash
#Include utils
source ../utils/utils.sh

make-bare-remote-repo
clone-remote-to-exercise

# Set local git user name and email to distinguish commits.
git config --local user.name "git-katas working bot"
git config --local user.email "git-katas@workplace.com"

echo "A" > fileA.txt

git add fileA.txt
git commit -m "Add file fileA.txt"

echo "B" > fileB.txt

git add fileB.txt
git commit -m "Add content to fileB.txt"

echo "A" >> fileA.txt
echo "B" >> fileB.txt

git add .
git commit -m "Change both files"

git push -u origin master

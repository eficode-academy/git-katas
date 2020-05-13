#!/bin/bash
#Include utils
source ../utils/utils.sh

make-bare-remote-repo 
clone-remote-to-exercise

touch README.md
git add README.md
git commit -m "Initial Commit"
git push -u origin master
cp ../pre-push pre-push
#!/bin/bash
#Include utils
source ../utils/utils.sh

makefakeremoterepo 
clone_remote_to_exercise

touch README.md
git add README.md
git commit -m "Initial Commit"
git push -u origin master
cp ../pre-push pre-push
#!/bin/bash
source ../utils/utils.sh

rm -rf exercise

mkdir exercise
cp fitzgerald-pushes-before-we-do.sh ./exercise/
cd exercise

git init fake-remote-repository
pushd fake-remote-repository 
touch README.md
git add README.md
git commit -m "Add README.md" 
git checkout HEAD~0
popd



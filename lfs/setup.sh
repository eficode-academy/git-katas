#!/bin/bash
#Include utils
source ../utils/utils.sh

pre-setup-with-remote

git commit --allow-empty -m "Initial commit"


git push origin master

echo "Hello" > hello.txt
echo "Stuff" > stuff.txt
git add . 
git commit -m 'Some small files'

truncate -s 1M file1.mp3

git add file1.mp3
git commit -m 'Add actual mp3'

git push

truncate -s 1M file2.mpeg



post-setup
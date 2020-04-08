#!/bin/bash

# kata: basic-stashing


# Include utils
source ../utils/utils.sh


pre-setup # Make exercise repo, and setup necessary.

echo "Initial content of the file" > file.txt
touch fix.txt

git add file.txt fix.txt
git commit -m "Initial commit"


echo "this file haaasss some typos" > bug.txt

git add bug.txt
git commit -m "add bug.txt"

echo "some changes I made and staged" >> file.txt

git add file.txt

echo "some changes I made and did not stage yet" >> file.txt

echo "changes I did not stage" > fix.txt

post-setup

#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="3-way-merge"
make-exercise-repo

touch greeting.txt
git add greeting.txt
git commit -m "Add file greeting.txt"
echo "hello" > greeting.txt
git add greeting.txt
git commit -m "Add content to greeting.txt"

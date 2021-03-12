#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="basic-ignore"
make-exercise-repo

echo "hello" > file1.txt
git checkout -b master

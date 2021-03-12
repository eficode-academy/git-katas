#!/usr/bin/env bash

# Include utils
source ../utils/utils.sh

kata="git-attributes"
make-exercise-repo

printf 'hello æøå\r\n' > file1.txt
git checkout -b master

#!/usr/bin/env bash

# Include utils
source ../utils/utils.sh

kata="git-attributes"
makerepo

printf 'hello æøå\r\n' > file1.txt
git init
git checkout -b master

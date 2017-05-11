#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="basic-ignore"
makerepo

echo "hello" > file1.txt
git init
git checkout -b master

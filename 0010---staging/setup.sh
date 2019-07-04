#!/bin/bash

# Include utils
source ../utils/utils.sh
makerepo

kata="basic-staging"
echo 1 > file.txt
git add file.txt
git commit -m "1"

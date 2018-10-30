#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="basic-branching"
makerepo

echo "dummy" > dummy.txt
git add dummy.txt
git commit -m "dummy commit"
git checkout -b second-branch
git checkout master

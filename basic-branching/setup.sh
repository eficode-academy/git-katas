#!/bin/bash

# kata: basic-branching

# Include utils
source ../utils/utils.sh

pre-setup # Make exercise repo, and setup necessary.

echo "dummy" > dummy.txt
git add dummy.txt
git commit -m "dummy commit"
git checkout -b second-branch
git checkout master

post-setup

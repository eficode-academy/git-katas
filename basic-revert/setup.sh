#!/bin/bash

# kata: basic-revert

# Include utils
source ../utils/utils.sh

pre-setup # Make exercise repo, and setup necessary.

touch greeting.txt
git add greeting.txt
git commit -m "Add file greeting.txt"
echo "we want to revert back to this" > greeting.txt
git add greeting.txt
git commit -m "Add content to greeting.txt"
echo "this should have been appended to the original content" > greeting.txt
git add greeting.txt
git commit -m "Add more content to greeting.txt"

post-setup

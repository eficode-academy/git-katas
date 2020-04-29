#!/bin/bash

# kata: basic-revert

# Include utils
source ../utils/utils.sh

pre-setup # Make exercise repo, and setup necessary.

touch greeting.txt
git add greeting.txt
git commit -m "Add file greeting.txt"
echo "supersecretpassword" > credentials.txt
git add credentials.txt
git commit -m "Add credentials to repository"
echo "Original file content" > greeting.txt
git add greeting.txt
git commit -m "Add content to greeting.txt"
echo "This should have been appended to the original content, rather than overwriting it." > greeting.txt
git add greeting.txt
git commit -m "Overwrite greeting.txt"

post-setup

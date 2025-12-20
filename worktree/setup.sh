#!/bin/bash

# Include utils
source ../utils/utils.sh

make-exercise-repo
config-local-username

# Create initial commit on master
echo "Initial content" > README.txt
git add README.txt
git commit -m "Initial commit on master"

# Create feature branch with some commits
git switch -c feature
echo "Feature work" > feature.txt
git add feature.txt
git commit -m "Add feature.txt"

echo "More feature work" >> feature.txt
git add feature.txt
git commit -m "Update feature.txt"

# Go back to master
git switch master

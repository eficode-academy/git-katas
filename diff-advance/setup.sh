#!/bin/bash

# Source utils
source ../utils/utils.sh

# Prep repo
kata="git-diff-advance"
make-exercise-repo

# Prep branches
echo "Step 1 before changes" > step1.pipeline
echo "Step 2 will remain unchanged" > step2.pipeline
echo "Step 3 before changes" > step3.pipeline
echo "Utilities before changes" > stepx.utils
git add .
git commit -m "Initial commit"

git checkout -b pipeline-improvement
echo "Step 1 after improvement" > step1.pipeline
echo "Step 3 after changes" > step3.pipeline
echo "Utilities after changes" > stepx.utils
git add .
git commit -m "Improve pipeline - name change"
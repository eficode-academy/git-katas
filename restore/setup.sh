#!/bin/bash

# Include utils

source ../utils/utils.sh

make-exercise-repo
echo "the original foo" > foo.txt
git add foo.txt
git commit -m "Add foo.txt"
git tag v1.0.0
sleep 1
echo "bar" > bar.txt
git add bar.txt
git commit -m "Add bar.txt"
sleep 1
echo "foo" > foo.txt
git add foo.txt
git commit -m "Update foo.txt"
sleep 1
echo "FIXME: DONT COMMIT" > bar.txt
git add bar.txt
rm foo.txt

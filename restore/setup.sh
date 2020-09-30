#!/bin/bash

# Include utils

source ../utils/utils.sh

make-exercise-repo
echo "foo" > foo.txt
git add foo.txt
git commit -m "Add foo.txt"
echo "bar" > bar.txt
git add bar.txt
git commit -m "Add bar.txt"

echo "FIXME: DONT COMMIT" > bar.txt
git add bar.txt
rm foo.txt

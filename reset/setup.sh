#!/usr/bin/env bash

# Include utils
source ../utils/utils.sh

make-exercise-repo

for i in {1..10}
do
    echo "$i" > $i.txt
    git add $i.txt
    git commit -m "$i"
done


#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="merge-mergesort"
make-exercise-repo

cp ../base.py mergesort.py
git add mergesort.py
git commit -m "Fake it till you make it - Faking mergesort using python .sort() method"
git checkout -b "Mergesort-Impl"
cp ../righty.py mergesort.py
git add mergesort.py
git commit -m "Mergesort implemented on feature branch"
git checkout master
cp ../lefty.py mergesort.py
git add mergesort.py
git commit -m "Mergesort implemented on master"


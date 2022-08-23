#!/bin/bash

source ../utils/utils.sh

make-exercise-repo

git commit --allow-empty -m "Initial commit"

git tag v0.0

echo "Hello World!" > hello.code
git add hello.code
git commit -m "Hello World feature"

echo "# THE Ultimate Helo Wrld program" > README.md
echo "" >> README.md
echo "This program does exactly what it says" >> README.md
git add README.md
git commit -m "Add documentation"

echo "Unrelated stuff!" > unrelated.stuff.code
git add unrelated.stuff.code
git commit -m "Add Unrelated stuff feature"

echo "does_it_work(hello.code);" > hello.test
git add hello.test
git commit -m "Test for feature hello world"

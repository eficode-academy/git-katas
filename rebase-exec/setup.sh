#!/bin/bash

source ../utils/utils.sh

make-exercise-repo

echo "#! /usr/bin/env bash" > 'test.sh'
echo 'echo "Running tests on commit $(git rev-parse --short HEAD)"' >> 'test.sh'
echo "echo 'all tests pass'" >> 'test.sh'
echo "exit 0" >> 'test.sh'
chmod +x 'test.sh'
git add 'test.sh'
git commit -m "Initial commit"
git tag initial-commit

touch 1.txt
git add 1.txt
git commit -m "1"

touch 2.txt
git add 2.txt
git commit -m "2"

touch 3.txt
git add 3.txt
echo "#! /usr/bin/env bash" > 'test.sh'
echo 'echo "Running tests on commit $(git rev-parse --short HEAD)"' >> 'test.sh'
echo "echo 'One failing test'" >> 'test.sh'
echo "exit 1" >> 'test.sh'
git add 'test.sh'
git commit -m "3"

touch 4.txt
git add 4.txt
git commit -m "4"

touch 5.txt
git add 5.txt
echo "#! /usr/bin/env bash" > 'test.sh'
echo 'echo "Running tests on commit $(git rev-parse --short HEAD)"' >> 'test.sh'
echo "echo 'all tests pass'" >> 'test.sh'
echo "exit 0" >> 'test.sh'
git add 'test.sh'
git commit -m "5"

touch 6.txt
git add 6.txt
git commit -m "6"



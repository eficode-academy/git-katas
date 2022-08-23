#!/bin/bash
#Include utils
source ../utils/utils.sh

make-bare-remote-repo 
clone-remote-to-exercise

git commit --allow-empty -m "Initial commit"

git tag v0.0

git push origin master
git push origin v0.0

echo "Hello" > hello.code
git add hello.code
git commit -m "Helo Volrd feature"


echo "HelloWrld?" > hello.code
echo "Unrelated stuff!" > other.code
git add -A
git commit -am "Finished HW feature"

echo "Hello World!" > hello.code
git commit -am "Really made the thingy done"

echo "println DEBUG" >> hello.code
git commit -am "debugging"

echo "4321pass" > private.secret
git add private.secret
git commit -m "important secret"

echo "# THE Hello World program" > README.md
git add README.md
git commit -m "Add doc - step 1"

echo "# THE Ultimate Hello World program" > README.md
git commit -am "Add doc - step 2"

echo "" >> README.md
echo "This program does exactly what it says" >> README.md
git commit -am "Add doc - step 3"

echo "does_it_work(hello.code)" > hello.test
git add hello.test
git commit -m "Test for feature hello world"

echo "does_it_work(hello.code);" > hello.test
git commit -am "I forgot a semicolon"

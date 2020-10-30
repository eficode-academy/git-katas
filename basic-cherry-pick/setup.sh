#!/bin/bash

# kata: basic-cherry-pick

# Include utils
source ../utils/utils.sh

pre-setup # Make exercise repo, and setup necessary.

#Commit a
echo -e "Ben\nTom\nSally" > names.txt
git add names.txt
git commit -m "Commit A: Added the names file"

#Common base commit
#Commit b
echo "This is a lovely sentence" > sentence.txt
git add sentence.txt
git commit -m "Commit B: Added the sentence file"

#Branch away to feature
git branch feature

#Commit c
echo "This is another delicous sentence" >> other_sentence.txt
git add other_sentence.txt
git commit -m "Commit C: Added the additional other_sentence file"

#Commit d
echo -e "Cat\nDog\nMouse" >> animals.txt
git add animals.txt
git commit -m "Commit D: Added the animals file"

#Switch now to feature (commit b)
git checkout feature

#Commit e
echo "1\n2\n6\n54" >> numbers.txt
git add numbers.txt
git commit -m "Commit E: Added the numbers file"

#Commit f
echo -e "Craig\nJodie\nNathan" >> names.txt
git add names.txt
git commit -m "Commit F: Updated and added more names to the file"

#Commit g
echo "Finally I think this is probably the last sentence to add" >> sentence.txt
git add sentence.txt
git commit -m "Commit G: Updated the original sentence file"

#Commit h
echo "Boring extra file for no reason" > boring.txt
git add boring.txt
git commit -m "Commit H: Added the boring file"

git checkout master

post-setup

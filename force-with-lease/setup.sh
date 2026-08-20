#!/bin/bash

# Builds the exercise: a bare repository standing in for GitHub, and a clone of
# it with two commits already pushed - the second one carrying a typo.
#
# Run it from the repository root, with source, so that you are left inside the
# exercise repository:
#   source setup.sh

# Start from a clean slate.
rm -rf remote/ exercise/

# The stand-in for GitHub.
git -c init.defaultBranch=master init --bare remote

# Your clone of it.
git clone ./remote exercise
cd exercise

# Distinguish the setup commits from yours, and never sign them.
git config --local user.name "exercise setup bot"
git config --local user.email "setup-bot@example.com"
git config --local commit.gpgsign false

# Keep a reflog in the bare remote, so a clobbered commit can still be found.
git -C ../remote config core.logAllRefUpdates true

echo "print('hello')" > app.py
git add app.py
git commit -m "Add app"
git push -u origin master

echo "print('login')" >> app.py
git add app.py
git commit -m "Add lgoin feature"
git push

# The script that plays the part of a colleague pushing while you work.
cp ../colleague-pushes-a-fix.sh colleague-pushes-a-fix.sh

# From here on the commits are yours, so hand the identity back. Signing stays
# off, so a signing prompt cannot derail the exercise.
git config --local --unset user.name
git config --local --unset user.email

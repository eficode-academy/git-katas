#!/bin/bash

# Plays the part of a colleague who pushes an urgent fix to origin while you
# are busy rewriting your own history. Your clone is deliberately left unaware.
#
# Run it from inside the exercise repository:
#   ./colleague-pushes-a-fix.sh

set -e

REMOTE=$(cd "$(dirname "$0")/../remote" && pwd)
WORKDIR=$(mktemp -d)

git clone -q "$REMOTE" "$WORKDIR/colleague"
cd "$WORKDIR/colleague"

git config user.name "Colleague"
git config user.email "colleague@example.com"
git config commit.gpgsign false

# A separate file, so that integrating this work never conflicts with yours.
echo "def reject_empty(password):" > fix.py
echo "    if not password: raise ValueError('empty password')" >> fix.py
git add fix.py
git commit -q -m "Fix crash on empty password (URGENT)"
git push -q origin master

cd /
rm -rf "$WORKDIR"

echo "Your colleague just pushed 'Fix crash on empty password (URGENT)' to origin."
echo "Your clone has not been told about it."

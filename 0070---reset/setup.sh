#!/usr/bin/env bash
rm -rf exercise
mkdir exercise

cd exercise

git init

for i in {1..10}
do
    echo "$i" > $i.txt
    git add $i.txt
    git commit -m "$i"
done


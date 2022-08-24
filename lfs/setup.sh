#!/bin/bash
#Include utils
source ../utils/utils.sh

pre-setup-with-remote

git commit --allow-empty -m "Initial commit"


git push origin master

echo "Hello" > hello.txt
echo "Stuff" > stuff.txt
git add . 
git commit -m 'Some small files'

# Create a dummy mp3 file in a way that is more cross-platform than `truncate -s 1M file1.mp3``
echo "Dummy sound data" > tmpfile1;
while [ "$(wc -c < tmpfile1)" -le 1048576 ]; do 
    cat tmpfile1 >> tmpfile2
    cat tmpfile2 >> tmpfile1
done
rm tmpfile2
mv tmpfile1 file1.mp3

git add file1.mp3
git commit -m 'Add actual mp3'

git push

#truncate -s 1M file2.mpeg
# Create a dummy mpeg file in a way that is more cross-platform than `truncate -s 1M <file name>`
echo "Very fake and repetitive video data" > tmpfile1;
while [ "$(wc -c < tmpfile1)" -le 1048576 ]; do 
    cat tmpfile1 >> tmpfile2
    cat tmpfile2 >> tmpfile1
done
rm tmpfile2
mv tmpfile1 file2.mpeg


post-setup
kata="kata3-detached-head"

git checkout $kata-master

touch file1
git add file1
git commit -am "A"

touch file2
git add file2
git commit -am "B"

touch file3
git add file3
git commit -am "C"

touch file4
git add file4
git commid -am "D"

git checkout HEAD~3





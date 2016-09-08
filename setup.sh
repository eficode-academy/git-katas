kata="kata5-commit-on-wrong-branch"

git checkout -b $kata-master

echo "This is a relevant fact" > file.txt

git add file.txt

git commit -m "add relevant fact"

git checkout -b $kata-quickfix HEAD~1

echo "This is a very quick fix" > fix.txt

git add fix.txt

git commit -m "Make quick fix"


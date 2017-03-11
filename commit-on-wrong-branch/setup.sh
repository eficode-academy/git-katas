kata="kata5-commit-on-wrong-branch"
rm -rf exercise

mkdir exercise 
cd exercise

git init

git checkout -b $kata-master

touch file.txt

git add file.txt
git commit -m "Initial commit"

echo "This is a relevant fact" > file.txt

git add file.txt

git commit -m "add relevant fact"

git checkout -b $kata-quickfix HEAD~1

echo "This is a very quick fix" > fix.txt

git add fix.txt

git commit -m "Make quick fix - should be moved to master"


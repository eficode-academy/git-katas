kata="kata1-merge-conflict"

git checkout -b $kata-branch1

echo "This is a relevant fact" > file.txt

git add file.txt

git commit -m "add relevant fact"

git checkout master

git checkout -b $kata-branch2

echo "This is an indispensable truth!" > file.txt

git add file.txt

git commit -m "add indispensable truth!"

git checkout master




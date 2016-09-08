kata="kata1-merge-conflict"

git checkout -b $kata-branch1

echo "This is a relevant fact" > file.txt

git commit -am "add relevant fact"

git checkout -b $kata-branch2

echo "This is an indispensable truth!" > file.txt

git commit -am "add indispensable truth!"




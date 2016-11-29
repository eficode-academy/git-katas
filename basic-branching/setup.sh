kata="basic-branching"
mkdir exercise
cd exercise
git init
git checkout -b $kata-second-branch
echo "test" > file1.txt
git add file1.txt
git commit -m "Add file1.txt"
git checkout -b $kata-master

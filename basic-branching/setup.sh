kata="basic-branching"
git checkout -b $kata-master
git checkout -b $kata-second-branch
echo "test" > file1.txt
git add file1.txt
git commit -m "Add file1.txt"
git checkout $kata-master

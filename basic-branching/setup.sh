kata="basic-branching"
mkdir exercise
cd exercise
git init
git checkout -b $kata-master
echo "dummy" > dummy.txt
git add dummy.txt
git commit -m "dummy commit"
git checkout -b $kata-second-branch
echo "test" > file1.txt
git add file1.txt
git commit -m "Add file1.txt"
git checkout $kata-master

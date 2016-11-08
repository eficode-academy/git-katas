kata = "basic-branching"
git checkout -b $kata-master
git checkout -b $kata-second-branch
echo "test" > file1.txt
git commit -am "Add file1.txt"
git checkout $kata-master

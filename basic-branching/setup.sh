kata="basic-branching"
rm -rf exercise
mkdir exercise
cd exercise
git init
git checkout -b $kata-master
echo "dummy" > dummy.txt
git add dummy.txt
git commit -m "dummy commit"
git checkout -b $kata-second-branch
git checkout $kata-master

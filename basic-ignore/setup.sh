kata="basic-ignore"
git checkout -b $kata-master
echo "test" > file1.txt
git add "Add file1.txt"
git commit -m "Adding file1.txt"
git checkout $kata-master

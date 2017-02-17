kata="basic-staging"
rm -rf exercise
mkdir exercise
cd exercise
git init
git checkout -b $kata-master
echo 1 > file.txt
git add file.txt
git commit -m "1"

kata="kata4-bad-commit"

git checkout -b $kata-branch1

echo "This is a relevant fact\n" > file.txt

git add file.txt

git commit -m "Add relevant fact"

echo "This is also relevant\n" >> file.txt

git commit -am "Add more relevancy"

echo "Perhaps this is the most relevant\n" >> file.txt

git commit -am "most relevant!"

echo "This is some random bullshit Johan made up!" >> file.txt

git commit -am "as important as it gets"

echo "This is the prime directive\n" >> file.txt

git commit -am "add prime directive\n"

echo "NEVER change public history" >> file.txt

git commit -am "add the word!"


kata="ff-merge"
rm -rf exercise
mkdir exercise
cd exercise
git init
touch greeting.txt
git add greeting.txt
git commit -m "Add file greeting.txt"
echo "hello" > greeting.txt
git add greeting.txt
git commit -m "Add content to greeting.txt"

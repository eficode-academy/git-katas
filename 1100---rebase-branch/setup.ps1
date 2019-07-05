. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path greeting.txt

git add greeting.txt
git commit -m "Add file greeting.txt"

Set-Content -Value "hello" -Path greeting.txt

git add greeting.txt
git commit -m "Add content to greeting.txt"

# Go to uppercase on a branch
git checkout -b uppercase

Set-Content -Value "HELLO" -Path greeting.txt

git commit -am "Change greeting to uppercase"

# Move forward on master
git checkout master

Set-Content -Value "Greetings library" -Path README.md

git add README.md
git commit -m "Add readme"

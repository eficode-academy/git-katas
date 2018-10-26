. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path greeting.txt

git add greeting.txt
git commit -m "Add file greeting.txt"

Set-Content -Value "we want to revert back to this" -Path greeting.txt

git add greeting.txt
git commit -m "Add content to greeting.txt"

Set-Content -Value "this should have been appended to the original content" -Path greeting.txt

git add greeting.txt
git commit -m "Add more content to greeting.txt"

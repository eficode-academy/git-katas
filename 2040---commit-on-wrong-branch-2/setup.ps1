. ..\utils\make-exercise-repo.ps1

Set-Content -Value "Some coode" -Path myapp.txt
Add-Content -Value "Some other line of code" -Path myapp.txt
Add-Content -Value "Another line of code" -Path myapp.txt

git add myapp.txt
git commit -m "Initial commit"

git checkout -b new-feature

Add-Content -Value "First part of new awesome feature" -Path myapp.txt

git add myapp.txt
git commit -m "Implement first part of feature"

git checkout master

Set-Content -Value "Some coode" -Path myapp.txt
Add-Content -Value "Some other line of code" -Path myapp.txt
Add-Content -Value "Another line of code" -Path myapp.txt

git add myapp.txt
git commit -m "Fix bug"

Add-Content -Value "Second part of new feature" -Path myapp.txt

git add myapp.txt
git commit -m "Implement second part of feature"

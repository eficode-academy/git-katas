. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path file.txt

git add file.txt
git commit -m "Initial commit"

Set-Content -Value "This is a relevant fact" -Path file.txt

git add file.txt
git commit -m "add relevant fact"

git checkout -b quickfix HEAD~1

Set-Content -Value "This is a very quick fix" -Path fix.txt

git add fix.txt
git commit -m "Make quick fix - should be moved to master"

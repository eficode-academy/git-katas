. ..\utils\make-exercise-repo.ps1

Set-Content -Value "initial" -Path thing.txt

git add thing.txt
git commit -m "Initial commit"
git tag initial-commit

Set-Content -Value "This is a relevant fact" -Path file.txt

git add file.txt
git commit -m "Add relevant fact"

Set-Content -Value "This is an indispensable truth!" -Path file.txt

git add file.txt
git commit -m "Add indispensable truth!"

Set-Content -Value "42" -Path holygrail.txt

git add holygrail.txt
git commit -m "Found the holy grail"

git reset --hard HEAD~3

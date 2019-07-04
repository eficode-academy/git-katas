. ..\utils\make-exercise-repo.ps1

Set-Content -Value "dummy" -Path dummy.txt

git add dummy.txt
git commit -m "dummy commit"
git checkout -b second-branch
git checkout master

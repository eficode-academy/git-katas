. ..\utils\make-exercise-repo.ps1

Set-Content -Value "dummy" -Path dummy.txt

git add dummy.txt
git commit -m "dummy commit"
Set-Content -Value "dummy2" -Path dummy.txt
git add dummy.txt
git commit -m "adding more content to dummy.txt"

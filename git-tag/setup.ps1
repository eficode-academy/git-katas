. ..\utils\make-exercise-repo.ps1

Set-Content -Value "dummy" -Path dummy.txt

git add dummy.txt
git commit -m "dummy commit"
git tag "dummy"

Set-Content -Value "dummy2" -Path dummy.txt

git commit -m "adding more content to dummy.txt"
git tag -a "dummy2" -m "don't worry, be happy"

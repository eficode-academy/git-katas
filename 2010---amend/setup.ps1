. ..\utils\make-exercise-repo.ps1

Set-Content -Value "foo" -Path foo.txt
Set-Content -Value "bar" -Path bar.txt

git add foo.txt
git commit -m "feature 73"

. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path file1

git add file1
git commit -m "File1"

Set-Content -Value "" -Path file2

git add file2
git commit -m "File2"

Set-Content -Value "" -Path badfile

git add badfile
git commit -m "File3"

Set-Content -Value "" -Path file4

git add file4
git commit -m "File4"

Set-Content -Value "" -Path file5

git add file5
git commit -m "File5"

. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path file1

git add file1
git commit -am "A"

Set-Content -Value "" -Path file2

git add file2
git commit -am "B"

Set-Content -Value "" -Path file3

git add file3
git commit -am "C"

Set-Content -Value "" -Path file4

git add file4
git commit -am "D"

git checkout HEAD~3

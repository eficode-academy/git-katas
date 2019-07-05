. ..\utils\make-exercise-repo.ps1

Set-Content -Value "initial" -Path foo.txt

git add foo.txt
git commit -m "foo.txt"

Set-Content -Value "1" -Path file1

git add file1
git commit -m "file1"

Set-Content -Value "9" -Path file9

git add file9
git commit -m "file9"

Set-Content -Value "8" -Path file8

git add file8
git commit -m "file8"

Set-Content -Value "3" -Path file3

git add file3
git commit -m "file3"

Set-Content -Value "4" -Path file4

git add file4
git commit -m "file4"

Set-Content -Value "5" -Path file5

git add file5
git commit -m "file5"

Set-Content -Value "2" -Path file2

git add file2
git commit -m "file2"

Set-Content -Value "6" -Path file6

git add file6
git commit -m "file6"

Set-Content -Value "7" -Path file7

git add file7
git commit -m "file7"

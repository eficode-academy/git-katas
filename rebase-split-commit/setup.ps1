. ..\utils\make-exercise-repo.ps1

Set-Content "1.txt" -Value ""
git add 1.txt
git commit -m "1"

git tag first-commit

Set-Content "2.txt" -Value ""
git add 2.txt
git commit -m "2"

Set-Content "3.txt" -Value ""
git add 3.txt
git commit -m "3"

Set-Content "4.txt" -Value ""
git add 4.txt
git commit -m "4"

Set-Content "5.txt" -Value ""
git add 5.txt
git commit -m "5"

Set-Content "6.txt" -Value ""
git add 6.txt
git commit -m "6"
. ..\utils\make-exercise-repo.ps1

Set-Content -Value "Initial content of the file" -Path file.txt
Set-Content -Value "" -Path fix.txt

git add file.txt fix.txt
git commit -m "Initial commit"

Set-Content -Value "this file haaasss some typos" -Path bug.txt

git add bug.txt
git commit -m "add bug.txt"

Add-Content -Value "some changes I made and staged" -Path file.txt

git add file.txt

Add-Content -Value "some changes I made and did not stage yet" -Path file.txt
Set-Content -Value "changes I did not stage" -Path fix.txt

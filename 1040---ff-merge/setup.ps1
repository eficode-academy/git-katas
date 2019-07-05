. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path greeting.txt

git add greeting.txt
git commit -m "Add file greeting.txt"

Set-Content -Value "hello" -Path greeting.txt

git add greeting.txt
git commit -m "Add content to greeting.txt"

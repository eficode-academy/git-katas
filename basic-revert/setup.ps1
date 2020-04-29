. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path greeting.txt

git add greeting.txt
git commit -m "Add file greeting.txt"

Set-Content -Value "supersecretpassword" -Path credentials.txt
git add credentials.txt
git commit -m "Add credentials to repository"

Set-Content -Value "Original File Content" -Path greeting.txt

git add greeting.txt
git commit -m "Add content to greeting.txt"

Set-Content -Value "This should have been appended to the original content, rather than overwriting it" -Path greeting.txt

git add greeting.txt
git commit -m "Overwrite greeting.txt"

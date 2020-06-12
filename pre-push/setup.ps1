. ..\utils\make-bare-remote-repo.ps1
. ..\utils\clone-remote-to-exercise.ps1

Set-Content -Value "" -Path README.md

git add README.md
git commit -m "Initial Commit"
git push -u origin master

Copy-Item ../pre-push pre-push

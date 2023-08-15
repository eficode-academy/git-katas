# Source utils
. ..\utils\make-exercise-repo.ps1

# Prep branches
Set-Content -Value "hello hello" -Path greeting1.txt
Set-Content -Value "and welcome" -Path greeting2.txt
Set-Content -Value "to a rebase exercise" -Path greeting3.txt
git add .
git commit -m "add greetings"

git checkout -b incremental-change-merge
Set-Content -Value "hello random people" -Path greeting1.txt
git add greeting1.txt
git commit -m "change 1"
Set-Content -Value "and WELCOME" -Path greeting2.txt
git add greeting2.txt
git commit -m "change 2"
Set-Content -Value "to a conflict resolving exercise" -Path greeting3.txt
git add greeting3.txt
git commit -m "change 3"

git checkout -b incremental-change-rebase

git checkout master
Set-Content -Value "helooooo" -Path greeting1.txt
Set-Content -Value "AND WELCOME" -Path greeting2.txt
Set-Content -Value "to a rebase conflict exercise" -Path greeting3.txt
git add .
git commit -m "master change"

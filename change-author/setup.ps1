. ..\utils\make-bare-remote-repo.ps1

. ..\utils\clone-remote-to-exercise.ps1

# Set local git user name and email to distinguish commits.
git config --local user.name "git-katas working bot"
git config --local user.email "git-katas@workplace.com"

Set-Content -Value "A" -Path fileA.txt

git add fileA.txt
git commit -m "Add file fileA.txt"

Set-Content -Value "B" -Path fileB.txt

git add fileB.txt
git commit -m "Add content to fileB.txt"

Set-Content -Value "AA" -Path fileA.txt
Set-Content -Value "BB" -Path fileB.txt

git add .
git commit -m "Change both files"

git push -u origin master

Push-Location ../fake-remote-repository

git checkout master
Set-Content -Value "" -Path fitz-was-here.md

git add fitz-was-here.md
git commit -m "Fitz made this" --author "R. Fitzgerald <rfitz@example.com>"
git checkout HEAD~0

Pop-Location

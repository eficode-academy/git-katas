. ..\utils\make-exercise-repo.ps1

Set-Content -Value "foo" -Path foo.txt
git add foo.txt
git commit -m "Add foo.txt"
Set-Content -Value "bar" -Path bar.txt
git add bar.txt
git commit -m "Add bar.txt"

Set-Content -Value "FIXME: DONT COMMIT" -Path bar.txt
git add bar.txt
Remove-Item foo.txt

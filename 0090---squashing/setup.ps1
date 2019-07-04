. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path alsoafile.txt

git add alsoafile.txt
git commit -m "Initial file"

Set-Content -Value "This is a relevant fact\n" -Path file.txt

git add file.txt
git commit -m "Add relevant fact"

Add-Content -Value "This is also relevant\n" -Path file.txt

git commit -am "Add more relevancy"

Add-Content -Value "Perhaps this is the most relevant\n" -Path file.txt

git commit -am "Most relevant!"

Add-Content -Value "This is the prime directive\n" -Path file.txt

git commit -am "Add prime directive"

Add-Content -Value "NEVER change public history" -Path file.txt

git commit -am "Add the word!"

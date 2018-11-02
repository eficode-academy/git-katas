. ..\utils\make-exercise-repo.ps1

Set-Content -Value "library-1.2.3" -Path lib.txt
Set-Content -Value "module using library-1.2.3" -Path mymodule.txt

git add lib.txt mymodule.txt
git commit -m "Adding module with its library"

git branch integrate-library-1.2.4
git checkout integrate-library-1.2.4

Set-Content -Value "library-1.2.4" -Path lib.txt
Add-Content -Value "New library functionality" -Path lib.txt
Set-Content -Value "module using library-1.2.4" -Path mymodule.txt

git add lib.txt
git add mymodule.txt
git commit -m "Update to library version 1.2.4"

Add-Content -Value "Use new library functionality" -Path mymodule.txt

git add mymodule.txt
git commit -m "Use new functionality in mymodule"

git checkout master

Add-Content -Value "Promising feature X" -Path mymodule.txt

git add mymodule.txt
git commit -m "Add feature X"

git merge integrate-library-1.2.4 --no-edit

# deal with merge conflict
Set-Content -Value "module using library-1.2.4" -Path mymodule.txt
Add-Content -Value "Promising feature X" -Path mymodule.txt
Add-Content -Value "Use new library functionality" -Path mymodule.txt

git add mymodule.txt
git commit -m "Merge integrate-library-1.2.4" --no-edit

Add-Content -Value "Useful feature Y" -Path mymodule.txt

git add mymodule.txt
git commit -m "Add feature Y"

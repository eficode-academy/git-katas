. ..\utils\make-exercise-repo.ps1

# Create initial commit on master
Set-Content -Value "Initial content" -Path README.txt
git add README.txt
git commit -m "Initial commit on master"

# Create feature branch with some commits
git switch -c feature
Set-Content -Value "Feature work" -Path feature.txt
git add feature.txt
git commit -m "Add feature.txt"

Add-Content -Value "More feature work" -Path feature.txt
git add feature.txt
git commit -m "Update feature.txt"

# Go back to master
git switch master

# First cleanup if there is an old exercise repository
if (Test-Path .\exercise) {
	Remove-Item .\exercise\ -Force -Recurse -ErrorAction:Stop
}

# Initialize a new repository
git init exercise

# Go there
Set-Location .\exercise\

# Set local git user name and email to distinguish commits.
git config --local user.name "git-katas trainer bot"
git config --local user.email "git-katas@example.com"


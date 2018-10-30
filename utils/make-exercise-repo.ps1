# First cleanup if there is an old exercise repository
if (Test-Path .\exercise) {
	Remove-Item .\exercise\ -force -recurse
}

# Initialize a new repository
git init exercise

# Go there
Set-Location .\exercise\

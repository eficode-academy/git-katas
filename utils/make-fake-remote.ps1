# First cleanup if there is an old exercise repository
if (Test-Path .\remote) {
	Remove-Item .\remote\ -force -recurse
}

# Initialize a new repository
git init --bare remote

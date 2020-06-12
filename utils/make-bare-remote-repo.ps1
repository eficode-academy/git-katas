# First cleanup if there is an old remote repository
if (Test-Path .\remote) {
	Remove-Item .\remote -force -recurse -ErrorAction:Stop
}

# Initialize a new remote repository
git init --bare remote

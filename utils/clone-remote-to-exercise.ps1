# First cleanup if there is an old exercise repository
if (Test-Path .\exercise) {
	Remove-Item .\exercise -Force -Recurse -ErrorAction:Stop
}

# Clone remote
git clone ./remote exercise

# Go there
Set-Location exercise

# First cleanup if there is an old exercise repository
try {
	if (Test-Path .\exercise) {
		Remove-Item .\exercise\ -Force -Recurse -ErrorAction:Stop
	}

	# Initialize a new repository
	git -c init.defaultBranch=master init exercise

	# Go there
	Set-Location .\exercise\

	# Using this as a check if the exercise folder was created successfully
	# If there was an issue during git init the Get-ChildItem will fail
	$null = Get-ChildItem .  -ErrorAction:Stop

	# Set local git user name and email to distinguish commits.
	git config --local user.name "git-katas trainer bot"
	git config --local user.email "git-katas@example.com"
}
catch {
	Write-Error "Error during exercise creation`nPlease try removing the exercise folder manually and run setup.ps1 again."
}


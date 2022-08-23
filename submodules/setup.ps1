# First cleanup if there is an old exercise folder
if (Test-Path .\exercise) {
	Remove-Item .\exercise -force -recurse
}

# Create exercise folder & go there
New-Item -ItemType Directory -Path exercise | Out-Null
Set-Location .\exercise

# Create remote repo
git -c init.defaultBranch=master init --bare remote


git config --local user.name "git-katas trainer bot"
git config --local user.email "git-katas@example.com"


# Clone it so that it is ready for the exercise
git clone remote component

# Commit a file to the component repo & push it to the remote
Set-Location .\component

Set-Content -Value "" -Path component.h
git add component.h
git commit -m "Touch component header"
git push
Set-Location ..

# Create a product repo
git -c init.defaultBranch=master init product

Set-Location -Path .\product

git config --local user.name "git-katas trainer bot"
git config --local user.email "git-katas@example.com"

Set-Content -Value "" -Path .\product.h
git add .
git commit -m "Touch product header"
Set-Location ..

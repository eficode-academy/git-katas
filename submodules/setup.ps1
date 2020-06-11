# First cleanup if there is an old exercise repository
if (Test-Path .\exercise) {
	Remove-Item .\exercise\ -force -recurse
}

New-Item -ItemType Directory -Path exercise | Out-Null
Set-Location .\exercise\

# Create component repo
New-Item -ItemType Directory -Path .\remote\component | Out-Null
Set-Location .\remote\component
git init

git config --local user.name "git-katas trainer bot"
git config --local user.email "git-katas@example.com"

Set-Content -Value "" -Path component.h
git add component.h
git commit -m "Touch component header"

# Convert to a bare repository and delete the original working directory.
Move-Item -Path ".git" -Destination ..\component-repo.git
Set-Location ..\component-repo.git
git config --bool core.bare true
Set-Location ..
Remove-Item -Path ./component -Force -Recurse
Set-Location ..

# And clone it so that it is ready for the exrcise.
git clone remote/component-repo.git component

# Create a product repository.
git init product

Set-Location -Path .\product

git config --local user.name "git-katas trainer bot"
git config --local user.email "git-katas@example.com"

Set-Content -Value "" -Path .\product.h
git add .
git commit -m "Touch product header"

Set-Location .\..

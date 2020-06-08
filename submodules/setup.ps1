# First cleanup if there is an old exercise folder
if (Test-Path .\exercise) {
	Remove-Item .\exercise -force -recurse
}

# Create exercise folder & go there
New-Item -ItemType Directory -Path exercise | Out-Null
Set-Location .\exercise

# Create remote repo
git init --bare remote

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
git init product
Set-Location -Path .\product
Set-Content -Value "" -Path .\product.h
git add .\product.h
git commit -m "Touch product header"
Set-Location ..

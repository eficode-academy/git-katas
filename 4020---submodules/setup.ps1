. ..\utils\make-exercise-repo.ps1

New-Item component -ItemType Directory | Out-Null
Set-Location component
Set-Content -Value "" -Path component.h

git init
git add component.h
git commit -m "Touch component header."

Set-Location .\..

New-Item product -ItemType Directory | Out-Null
Set-Location product
Set-Content -Value "" -Path product.h

git init
git add product.h
git commit -m "Touch product header."

Set-Location .\..

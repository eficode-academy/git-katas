. ..\utils\make-exercise-repo.ps1

Set-Content -Value "" -Path test.md

git add test.md
git commit -m "Add test.md"

New-Item src -ItemType Directory | Out-Null
New-Item src\main -ItemType Directory | Out-Null
Set-Content -Value "" -Path "src\file.c"
Set-Content -Value "" -Path "src\main\main.h"

git add src/
git commit -m "Add folders"

Set-Content -Value "This is more data" -Path "src\main\main.h"

git add src/main/main.h
git commit -m "Put data in main.h"

Set-Content -Value "This is also a bunch of data" -Path "test.md"

git add test.md
git commit -m "Fill test.md"

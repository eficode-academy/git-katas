. ..\utils\make-exercise-repo.ps1

New-Item src -ItemType Directory | Out-Null

Set-Content -Value "** SOME USEFUL INFO ** " -Path README.txt
Set-Content -Value "// awsome C code " -Path src\myapp.c
Set-Content -Value "// awsome C header " -Path src\myapp.h

git add src\myapp.* README.txt
git commit -m "C code for my app"

Set-Content -Value "// awsome C library  " -Path src\mylib.c
Set-Content -Value "" -Path src\myapp.c~
Set-Content -Value "" -Path src\oldfile.c~
Set-Content -Value "" -Path README.txt~

New-Item obj -ItemType Directory | Out-Null

Set-Content -Value "" -Path obj\mylib.o
Set-Content -Value "" -Path obj\mylib.a
Set-Content -Value "" -Path obj\myapp.o
Set-Content -Value "" -Path obj\a.out

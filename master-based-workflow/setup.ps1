if (Test-Path exercise) {
  Remove-Item exercise -force -recurse -ErrorAction:Stop
}

New-Item -Name "exercise" -ItemType "directory" | Out-Null

Copy-Item fitzgerald-pushes-before-we-do.ps1 ./exercise
Set-Location exercise

git  -c init.defaultBranch=master init fake-remote-repository
Push-Location fake-remote-repository 

Set-Content -Value "" -Path README.md
git add README.md
git commit -m "Add README.md" 
git checkout HEAD~0

Pop-Location

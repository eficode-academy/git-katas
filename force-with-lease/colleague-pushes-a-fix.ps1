# Plays the part of a colleague who pushes an urgent fix to origin while you
# are busy rewriting your own history. Your clone is deliberately left unaware.
#
# Run it from inside the exercise repository:
#   .\colleague-pushes-a-fix.ps1

$remote = (Resolve-Path "$PSScriptRoot\..\remote").Path
$work = Join-Path ([System.IO.Path]::GetTempPath()) ("colleague-" + [guid]::NewGuid())

git clone -q $remote $work
Push-Location $work

git config user.name "Colleague"
git config user.email "colleague@example.com"
git config commit.gpgsign false

# A separate file, so that integrating this work never conflicts with yours.
Set-Content -Value "def reject_empty(password):" -Path fix.py
Add-Content -Value "    if not password: raise ValueError('empty password')" -Path fix.py
git add fix.py
git commit -q -m "Fix crash on empty password (URGENT)"
git push -q origin master

Pop-Location
Remove-Item $work -Recurse -Force

Write-Output "Your colleague just pushed 'Fix crash on empty password (URGENT)' to origin."
Write-Output "Your clone has not been told about it."

if (-not (Test-Path .\remote)) {
  Write-Output "There is no remote\ folder - run .\setup.ps1 first."
  exit 1
}

if (@(git -C remote log --oneline master | Select-String "Fix crash on empty password").Count -gt 0) {
  Write-Output "Your colleague's fix is safe on origin."
  exit 0
}

Write-Output "Your colleague's fix is gone from origin - you clobbered it."
Write-Output "It is not lost yet. Find it again with:"
Write-Output "    git -C remote reflog master"
exit 1

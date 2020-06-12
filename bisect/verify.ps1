Push-Location .\exercise

if ($(git log -1 --format='%s' refs/bisect/bad --) -eq "22") {
  Write-Output "You managed to find the bad commit with bisect!"
}
else {
  Write-Output "You have still stuff to do!"
  Write-Output "Did you stop when git found the bad commit?"
}

Pop-Location

Get-ChildItem -Attributes Directory |
  ForEach-Object {
    if ($(Get-ChildItem $_.Name setup.ps1))
    {
      Push-Location $_.Name
      Write-Output "`nRunning setup script for kata $($_.Name)"
      .\setup.ps1
      Pop-Location
    }
  }

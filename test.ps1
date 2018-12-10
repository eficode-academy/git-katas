# ****************************************************************************
# Get all the setup.ps1 files and execute them to check if any errors occure
# Created by: Tomi Peltonen 2018-12-10
# ****************************************************************************
try
{
	write-host "Executing the exercise setup.ps1 files to make sure they are running properly." -ForegroundColor Black -BackgroundColor Green

	git config --global --replace-all user.name "Tomi Peltonen"
	git config --global --replace-all user.email "top@praqma.net"
	
	Write-Host "Git user updated" -foregroundcolor blue
		
	Write-Host "user.name: " -foregroundcolor blue -nonewline
	git config --global user.name
	
	Write-Host "user.email: " -foregroundcolor blue -nonewline
	git config --global user.email   
	
	$file = Get-ChildItem -Path $scriptPath -Recurse -Include setup.ps1
	
	for ($i=0; $i -lt $file.length; $i++) 
	{
		Set-Location $file[$i].Directory
		Write-Host Directory: $file[$i].Directory -ForegroundColor Black -BackgroundColor Yellow

		.\setup.ps1

		cd..
	}	
}
catch
{
	write-host "Caught an exception:" -ForegroundColor Red
    write-host "Exception Type: $($_.Exception.GetType().FullName)" -ForegroundColor Red
    write-host "Exception Message: $($_.Exception.Message)" -ForegroundColor Red
}
finally
{
	cd..
	write-host "Finally block reached, we are good!" -ForegroundColor Black -BackgroundColor Green
}
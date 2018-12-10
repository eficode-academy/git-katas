# ****************************************************************************
# Get all the setup.sh files and execute them to check if any errors occure
# Created by: 
# ****************************************************************************

cd basic-commits
./setup.sh
cd ..

# 
# try
# {
# 	echo Executing the exercise setup.ps1 files to make sure they are running properly.

# 	git config --global --replace-all user.name "Tomi Peltonen"
# 	git config --global --replace-all user.email "top@praqma.net"
	
# 	echo  Git user updated
		
# 	echo user.name: git config --global user.name
	
# 	echo user.email: git config --global user.email   
	
#     find . -type f -name setup.sh

# 	for ($i=0; $i -lt $file.length; $i++) 
# 	{
# 		Set-Location $file[$i].Directory
# 		echo Directory: $file[$i].Directory -ForegroundColor Black -BackgroundColor Yellow

# 		./setup.sh

# 		cd ..
# 	}	
# }
# catch
# {
# 	echo Caught an exception:
#     echo "Error in $__EXCEPTION_SOURCE__ at line: $__EXCEPTION_LINE__!"
# }
# finally
# {
# 	cd ..
# 	echo Finally block reached, we are good
# }
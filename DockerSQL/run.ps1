###############################################

## git config --global user.name <github userID>
## git clone <URL from github link copied earlier>

###############################################

#### Use Linux containers
# docker pull mcr.microsoft.com/mssql/server:2019-latest

##  list images
# docker image ls 

docker ps -a 

###############################################
## Remove the docker image if it exists
# docker rm -f sql2019_Demo

## start with empty directories
# Remove-Item C:\Users\folke\data\MSSQL\RPMBITEST\ -Recurse -Force  -ErrorAction Ignore
# New-Item -Path C:\Users\folke\data\MSSQL\RPMBITEST\  -ItemType directory -Force
# New-Item -Path C:\Users\folke\data\MSSQL\RPMBITEST\Backup\  -ItemType directory -Force


# Remove-Item    C:\Users\folke\data\MSSQL\RPMBISQL\ -Recurse -Force  -ErrorAction Ignore
# New-Item -Path C:\Users\folke\data\MSSQL\RPMBISQL\  -ItemType directory -Force
# New-Item -Path C:\Users\folke\data\MSSQL\RPMBISQL\Backup\  -ItemType directory -Force


# Remove-Item C:\Users\folke\data\MSSQL\RPMBITEST\*.bin -Recurse -Force  -ErrorAction Ignore
# Remove-Item C:\Users\folke\data\MSSQL\RPMBITEST\*.mdf -Recurse -Force  -ErrorAction Ignore
# Remove-Item C:\Users\folke\data\MSSQL\RPMBITEST\*.ldf -Recurse -Force  -ErrorAction Ignore
# Remove-Item C:\Users\folke\data\MSSQL\RPMBITEST\*.ndf -Recurse -Force  -ErrorAction Ignore

docker run -e "ACCEPT_EULA=Y" -e 'SA_PASSWORD=BilboB@ggins1' -p 1433:1433 --name sql2019_Demo  -v "C:\Users\folke\data\MSSQL\RPMBITEST\:/var/opt/mssql/data/" -d mcr.microsoft.com/mssql/server:2019-latest


docker start sql2019_Demo

docker cp "C:\Users\folke\data\MSSQL\AdventureWorksDW2017\AdventureWorksDW2017.bak" sql2019_Demo:\var\backups\

# docker cp "C:\Users\folke\data\MSSQL\RPMBITEST\Utility_backup_2019_12_21_220002_4954769.bak" sql2019_Demo:\var\backups\




### Where to put code?
# -v "C:\Users\folke\source\repos\DockerSQL\RPMBITEST\TSQL\:/var/opt/mssql/" 

## in Docker, SQL Server
docker exec -it  sql2019_Demo /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P BilboB@ggins1


## in Docker, root
docker exec -it -u root sql2019_Demo bash



## Run bash in the running Docker container, as root user
# docker exec -it -u root sql2019_Demo bash 


## run Linux subsystem on Win 10 ()
## enable-WindowsOptionalFeature -online -FeatureName Microsoft-Windows-subsystem-Linux


##-----------------------------
## Powershell?

# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
pwsh
# Installatie Script

# Zet de Execution Policy op Unrestricted (indien nodig):
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted

# Installeer .NET SDK 8:
Invoke-WebRequest -Uri https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-8.0.100-windows-x64-installer -OutFile dotnet-installer.exe
Start-Process -FilePath ./dotnet-installer.exe -Wait

# Installeer Git:
Invoke-WebRequest -Uri https://git-scm.com/download/win -OutFile git-installer.exe
Start-Process -FilePath ./git-installer.exe -Wait

# Clone de repository:
git clone https://github.com/jouw-gebruikersnaam/EasyDevOps.git

# Run de frontend applicatie:
cd ./EasyDevOps/frontend
dotnet run

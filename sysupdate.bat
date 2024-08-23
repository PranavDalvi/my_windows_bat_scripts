@echo off
echo Running all system updates...

echo Updating Scoop packages...
powershell -Command "scoop update --all"

echo Updating winget packages...
powershell -Command "winget upgrade --all"

echo Updating Windows...
powershell -Command "Start-Process powershell -Verb runAs -ArgumentList 'Install-Module -Name PSWindowsUpdate -Force; Import-Module PSWindowsUpdate; Install-WindowsUpdate -AcceptAll -AutoReboot'"

echo All updates complete!
pause

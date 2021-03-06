Write-Host  -ForegroundColor Cyan "Starting OSDCloud GUI, please wait..."
Write-Warning "This will automatically wipe your disk if you continue"
Start-Sleep -Seconds 10

#Change Display Resolution for Virtual Machine
if ((Get-MyComputerModel) -match 'Virtual') {
    Write-Host  -ForegroundColor Cyan "Setting Display Resolution to 1600x"
    Set-DisRes 1600
}

#Make sure I have the latest OSD Content
Write-Host  -ForegroundColor Cyan "Updating the awesome OSD PowerShell Module..."
Install-Module OSD -Force

Write-Host  -ForegroundColor Cyan "Importing the sweet OSD PowerShell Module..."
Import-Module OSD -Force

#TODO: Spend the time to write a function to do this and put it here
#Write-Host  -ForegroundColor Cyan "Ejecting ISO"
#Write-Warning "That didn't work because I haven't coded it yet!"
#Start-Sleep -Seconds 5

#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Cyan "Starting OSDCloud, please wait for GUI to load..."
#Start-OSDCloud -OSLanguage en-us -OSBuild 20H2 -OSEdition Enterprise -ZTI
Start-OSDCloudGUI

#Anything I want  can go right here and I can change it at any time since it is in the Cloud!!!!!
#Write-Host  -ForegroundColor Cyan "Starting OSDCloud PostAction..."
#Write-Warning "I'm not sure of what to put here yet"

#Restart from WinPE
#Write-Host  -ForegroundColor Cyan "Please restart the system..."
#Read-Host -Prompt "Press Enter to exit"
Write-Host -ForegroundColor Red "Restarting in 10 seconds!"
Start-Sleep -Seconds 11
wpeutil reboot

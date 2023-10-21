$vmstatus = (Get-VM 'Frappe').State
$source = "C:\vm-folder" #THIS THE VM FOLDER THAT YOU WANT TO BACK UP
$destination = "C:\backup" #THIS IS THE BACKUP FOLDER
if ($vmstatus -eq 'Running')
{
    Stop-VM -Name 'VM-NAME' #CHANGE THE VM-NAME WITH YOURS VM-NAME
    Copy-Item $source -Destination $destination -Recurse -force
    if(-not $?)
    {
        Write-Warning "Copy Failed"
    }
    else
    {
        Write-Warning "Copy Success"
    }
    Start-VM -Name 'VM-NAME' #CHANGE THE VM-NAME WITH YOURS VM-NAME
}
else
{
    Copy-Item $source -Destination $destination -Recurse -force
    if(-not $?)
    {
        Write-Warning "Copy Failed"
    }
    else
    {
        Write-Warning "Copy Success"
    }
    Start-VM -Name 'VM-NAME' #CHANGE THE VM-NAME WITH YOURS VM-NAME
}

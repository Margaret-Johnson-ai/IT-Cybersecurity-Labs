 Create_OUs.ps1
# Author: Margaret Johnson
# Description: Automates the creation of core Organizational Units (OUs) in the mjvirtlab.home domain.

Import-Module ActiveDirectory

$OUs = @(
    "OU=HR,DC=mjvirtlab,DC=home",
    "OU=IT,DC=mjvirtlab,DC=home",
    "OU=Sales,DC=mjvirtlab,DC=home",
    "OU=Service_Accounts,DC=mjvirtlab,DC=home"
)

foreach ($ou in $OUs) {
    if (-not (Get-ADOrganizationalUnit -Filter "DistinguishedName -eq '$ou'" -ErrorAction SilentlyContinue)) {
        New-ADOrganizationalUnit -Name ($ou -split "=")[1] -Path "DC=mjvirtlab,DC=home"
        Write-Host "Created OU: $ou"
    } else {
        Write-Host "OU already exists: $ou"
    }
}

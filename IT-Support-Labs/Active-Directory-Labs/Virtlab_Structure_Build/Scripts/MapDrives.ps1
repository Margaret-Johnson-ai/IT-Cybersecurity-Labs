# MapDrives.ps1 – AD Group-Based Drive Mapping Script
# Author: Margaret Johnson
# Purpose: Automatically map network drives based on group membership in a Windows domain environment

# Define group-to-share mappings
$driveMap = @{
    "HR_Group"      = "\\WIN22-DC1\HRDocs"
    "IT_Support"    = "\\WIN22-DC1\ITDocs"
    "Sales_Team"    = "\\WIN22-DC1\SalesDocs"
}

# Get current user group memberships
$user = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object System.Security.Principal.WindowsPrincipal($user)
$userGroups = $principal.Groups | ForEach-Object {
    $_.Translate([System.Security.Principal.NTAccount]).Value.Split('\')[-1]
}

# Map drive based on group
foreach ($group in $driveMap.Keys) {
    if ($userGroups -contains $group) {
        $path = $driveMap[$group]

        # Only map if the share is accessible
        if (Test-Path $path) {
            Write-Host "Mapping drive H: to $path for group $group"
            New-PSDrive -Name "H" -PSProvider FileSystem -Root $path -Persist
        } else {
            Write-Host "Share path $path not accessible. Check network or permissions."
        }

        break
    }
}


# MapDrives.ps1 - Group-Based Drive Mapping Script

$groups = @{
    "HR_Group"      = "\\WIN22-DC1\HRShare"
    "IT_Support"    = "\\WIN22-DC1\ITShare"
    "Sales_Team"    = "\\WIN22-DC1\SalesShare"
}

# Get current user groups
$userGroups = (New-Object System.Security.Principal.WindowsPrincipal([System.Security.Principal.WindowsIdentity]::GetCurrent())).Groups | 
              ForEach-Object { $_.Translate([System.Security.Principal.NTAccount]) } | 
              ForEach-Object { $_.Value.Split('\')[-1] }

# Loop through group mappings
foreach ($group in $groups.Keys) {
    if ($userGroups -contains $group) {
        # Map H: drive
        New-PSDrive -Name "H" -PSProvider FileSystem -Root $groups[$group] -Persist
        break
    }
}
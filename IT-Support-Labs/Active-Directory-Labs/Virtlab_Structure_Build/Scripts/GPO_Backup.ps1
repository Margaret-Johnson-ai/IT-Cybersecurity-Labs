<#
    Script: GPO_Backup.ps1
    Description: Backs up all existing Group Policy Objects (GPOs) to a specified directory.
    Author: Margaret Johnson
    Date: 2025-05-31
#>

# Define backup path
$backupPath = "C:\GPO_Backups"

# Create directory if it doesn't exist
if (-not (Test-Path -Path $backupPath)) {
    New-Item -ItemType Directory -Path $backupPath
}

# Backup all GPOs
Backup-GPO -All -Path $backupPath

Write-Output "✅ GPO Backup completed. Files saved to $backupPath"
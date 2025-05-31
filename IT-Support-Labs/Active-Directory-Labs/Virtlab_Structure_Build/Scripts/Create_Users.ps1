# Create_Users.ps1
# Author: Margaret Johnson
# Description: Bulk creates Active Directory users from a CSV input.

Import-Module ActiveDirectory

$csvPath = ".\users.csv"
$users = Import-Csv $csvPath

foreach ($user in $users) {
    $ouPath = "OU=$($user.OU),DC=mjvirtlab,DC=home"
    $name = "$($user.FirstName) $($user.LastName)"
    $sam = $user.Username
    $email = "$sam@mjvirtlab.home"
    $securePassword = ConvertTo-SecureString $user.Password -AsPlainText -Force

    if (-not (Get-ADUser -Filter {SamAccountName -eq $sam} -ErrorAction SilentlyContinue)) {
        New-ADUser `
            -Name $name `
            -GivenName $user.FirstName `
            -Surname $user.LastName `
            -SamAccountName $sam `
            -UserPrincipalName $email `
            -AccountPassword $securePassword `
            -EmailAddress $email `
            -Path $ouPath `
            -Enabled $true `
            -ChangePasswordAtLogon $true

        Write-Host "✅ Created user: $name ($sam)"

        if ($user.Group -ne "") {
            Add-ADGroupMember -Identity $user.Group -Members $sam
            Write-Host "   ➕ Added to group: $($user.Group)"
        }
    } else {
        Write-Host "⚠️ User already exists: $sam"
    }
}
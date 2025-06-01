# Create a new user
New-ADUser -Name "John Doe" -GivenName "John" -Surname "Doe" -SamAccountName "jdoe" -UserPrincipalName "jdoe@corp.local" -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -Enabled $true

# Add user to a group
Add-ADGroupMember -Identity "IT Support" -Members "jdoe"

# Reset user password
Set-ADAccountPassword -Identity "jdoe" -NewPassword (ConvertTo-SecureString "<REDACTED>" -AsPlainText -Force) -Reset

# Disable a user account
Disable-ADAccount -Identity "jdoe"

# Check group membership
Get-ADGroupMember -Identity "IT Support"

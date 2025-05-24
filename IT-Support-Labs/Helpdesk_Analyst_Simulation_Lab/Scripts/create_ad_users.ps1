# Filename: create_ad_users.ps1

# Simulated Active Directory user creation script

Write-Output "Simulating Active Directory user creation..."

# Define users
$users = @(
    @{FirstName="Jordan"; LastName="Carter"; Department="HR"},
    @{FirstName="Taylor"; LastName="Brooks"; Department="IT"},
    @{FirstName="Morgan"; LastName="Rivera"; Department="Finance"}
)

foreach ($user in $users) {
    $username = "$($user.FirstName.Substring(0,1).ToLower())$($user.LastName.ToLower())"
    $displayName = "$($user.FirstName) $($user.LastName)"
    Write-Output "Creating user: $displayName ($username) in $($user.Department)..."
    # Simulate AD creation logic (commented out):
    # New-ADUser -Name $displayName -SamAccountName $username -Department $user.Department -Enabled $true
}

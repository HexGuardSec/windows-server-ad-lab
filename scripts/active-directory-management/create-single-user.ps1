param(
    [string]$FirstName,
    [string]$LastName,
    [string]$SamAccountName,
    [string]$OU
)

$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

$UserPrincipalName = "$SamAccountName@corp.local"

$ExistingUser = Get-ADUser -Filter "SamAccountName -eq '$SamAccountName'" -ErrorAction SilentlyContinue

if (-not $ExistingUser) {

    New-ADUser `
    -Name "$FirstName $LastName" `
    -GivenName $FirstName `
    -Surname $LastName `
    -SamAccountName $SamAccountName `
    -UserPrincipalName $UserPrincipalName `
    -Path $OU `
    -AccountPassword $Password `
    -Enabled $true

    Write-Host "User created: $SamAccountName"
}
else {
    Write-Host "User already exists: $SamAccountName"
}

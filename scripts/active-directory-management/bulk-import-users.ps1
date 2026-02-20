param(
    [string]$CsvPath,
    [string]$OU
)

$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

Import-Csv $CsvPath | ForEach-Object {

    $ExistingUser = Get-ADUser -Filter "SamAccountName -eq '$($_.SamAccountName)'" -ErrorAction SilentlyContinue

    if (-not $ExistingUser) {

        New-ADUser `
        -Name "$($_.FirstName) $($_.LastName)" `
        -GivenName $_.FirstName `
        -Surname $_.LastName `
        -SamAccountName $_.SamAccountName `
        -UserPrincipalName "$($_.SamAccountName)@corp.local" `
        -Path $OU `
        -AccountPassword $Password `
        -Enabled $true

        Write-Host "User created: $($_.SamAccountName)"
    }
    else {
        Write-Host "User already exists: $($_.SamAccountName)"
    }
}

param(
    [string]$SamAccountName,
    [ValidateSet("Disable","Enable","ResetPassword")]
    [string]$Action
)

switch ($Action) {

    "Disable" {
        Disable-ADAccount -Identity $SamAccountName
        Write-Host "User disabled: $SamAccountName"
    }

    "Enable" {
        Enable-ADAccount -Identity $SamAccountName
        Write-Host "User enabled: $SamAccountName"
    }

    "ResetPassword" {
        $NewPassword = ConvertTo-SecureString "NewP@ssw0rd123!" -AsPlainText -Force
        Set-ADAccountPassword -Identity $SamAccountName -NewPassword $NewPassword -Reset
        Write-Host "Password reset for: $SamAccountName"
    }
}

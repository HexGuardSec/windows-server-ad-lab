# Active Directory Management with PowerShell

This module demonstrates how to manage Active Directory users using PowerShell.

---

## Features

- Create a single user
- Bulk import users from CSV
- Enable / Disable user accounts
- Reset passwords
- Idempotent logic (checks if user exists)

---

## Scripts Overview

### create-single-user.ps1
Creates one user in a specified OU.

Example:
.\create-single-user.ps1 -FirstName John -LastName Doe -SamAccountName john.doe -OU "OU=HR,OU=Users,OU=Company,DC=corp,DC=local"


---

### bulk-import-users.ps1
Creates multiple users from a CSV file.

Example:
.\bulk-import-users.ps1 -CsvPath "C:\scripts\users.csv" -OU "OU=HR,OU=Users,OU=Company,DC=corp,DC=local"


---

### manage-user.ps1
Manages existing users (Enable, Disable, ResetPassword).

Example:
.\manage-user.ps1 -SamAccountName john.doe -Action Disable


---

## Concepts Covered

- PowerShell pipeline
- Import-Csv
- ForEach-Object
- Error handling with -ErrorAction
- Active Directory module usage
- Idempotent scripting logic

---

## Enterprise Use Case

These scripts simulate real-world automation tasks commonly used in small to medium business environments.

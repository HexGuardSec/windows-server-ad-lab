# 🔐 Password & Account Lockout Policy

## Overview

This lab implements a domain-level password and account lockout policy using the Default Domain Policy.

These settings apply to all domain users and reflect a realistic Small-to-Medium Enterprise (SME) security baseline.

---

## Configuration Location

Configured in:

Default Domain Policy  
Computer Configuration  
→ Policies  
→ Windows Settings  
→ Security Settings  
→ Account Policies  

---

## Password Policy Settings

- Enforce password history: 5 passwords
- Maximum password age: 60 days
- Minimum password age: 1 day
- Minimum password length: 10 characters
- Password must meet complexity requirements: Enabled
- Store passwords using reversible encryption: Disabled

### Rationale

- Prevents password reuse cycles
- Enforces strong password creation
- Maintains balance between security and usability
- Reflects common SME best practices

---

## Account Lockout Policy Settings

- Account lockout threshold: 5 invalid logon attempts
- Account lockout duration: 15 minutes
- Reset account lockout counter after: 15 minutes

### Rationale

- Protects against brute-force attacks
- Avoids excessive lockouts due to user typing errors
- Prevents account lockout abuse (denial-of-service scenario)
- Maintains business productivity balance

---

## Testing Procedure

1. User attempted 5 invalid logins.
2. Account was automatically locked.
3. Verified lockout using:
   - Active Directory Users and Computers
   - PowerShell: Search-ADAccount -LockedOut

---

## Unlock Methods

Method 1 – GUI  
Active Directory Users and Computers → User → Account tab → Unlock account

Method 2 – PowerShell  

Unlock-ADAccount -Identity username

Method 3 – Automatic unlock after 15 minutes

---

## Key Takeaways

- Password and lockout policies must be configured at the domain level.
- These settings should only be configured in the Default Domain Policy.
- Proper balance between security and usability is critical.
- Testing policies in a lab environment validates real-world behavior.

This implementation reflects real-world enterprise security practices expected from junior IT administrators.
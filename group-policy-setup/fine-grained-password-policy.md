# 🔐 Fine-Grained Password Policy (FGPP)

## Overview

In addition to the default domain-wide password policy, this lab implements a Fine-Grained Password Policy (FGPP).

FGPP allows applying different password and lockout requirements to specific groups or users within the same Active Directory domain.

This feature is commonly used in enterprise environments to apply stricter security controls to privileged accounts.

---

## Why Use Fine-Grained Password Policies?

The Default Domain Policy applies to all users.

However, in real-world environments:

- IT administrators require stronger password rules
- Service accounts may require custom settings
- Sensitive roles require stricter lockout thresholds

FGPP provides flexibility without affecting the entire domain.

---

## Configuration Location

Configured in:

Active Directory Administrative Center (ADAC)

corp.local  
→ System  
→ Password Settings Container  

---

## Implemented Policy

Policy Name:

PSO_IT_StrongPolicy  

Applied To:

GG_IT

---

## Configuration Settings

- Precedence: 1
- Minimum password length: 14 characters
- Password complexity: Enabled
- Enforce password history: 10 passwords
- Account lockout threshold: 3 attempts
- Account lockout duration: 30 minutes
- Reset lockout counter after: 30 minutes

---

## Screenshots

### 1️⃣ Password Settings Container

File:  
screenshots/fine-grained-password-policy/01-password-settings-container.png  

Shows:
- Password Settings Container
- PSO_IT_StrongPolicy created

---

### 2️⃣ PSO Configuration Details

File:  
screenshots/fine-grained-password-policy/02-pso-it-configuration.png  

Shows:
- Minimum password length
- Lockout threshold
- Precedence value
- Group assignment (GG_IT)

---

### 3️⃣ PowerShell Verification

File:  
screenshots/fine-grained-password-policy/03-powershell-get-fgpp.png  

Command used:

Get-ADFineGrainedPasswordPolicy -Filter *

---

### 4️⃣ Policy Subject Verification

File:  
screenshots/fine-grained-password-policy/04-powershell-fgpp-subject.png  

Command used:

Get-ADFineGrainedPasswordPolicySubject "PSO_IT_StrongPolicy"

---

## Precedence Explanation

If multiple password policies apply to a user:

The policy with the lowest Precedence value is applied.

In this case:

Precedence = 1 ensures this stricter policy overrides the default domain policy for IT users.

---

## Example Scenario

User: thomas.it  
Group membership: GG_IT  

Because GG_IT is assigned to the PSO:

- Minimum password length = 14
- Lockout threshold = 3
- Stricter lockout duration

These settings override the domain default policy.

---

## Key Takeaways

- FGPP does not use GPO.
- It is configured via AD Administrative Center or PowerShell.
- It allows granular password enforcement.
- It is commonly used for privileged accounts.
- Precedence determines which policy applies.

This implementation reflects enterprise-level Active Directory security configuration practices.
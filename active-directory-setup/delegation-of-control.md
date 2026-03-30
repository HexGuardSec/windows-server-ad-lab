# 🔐 Delegation of Control

## Overview

This section demonstrates how administrative tasks can be delegated in Active Directory without granting full Domain Admin privileges.

In a real enterprise environment, support teams must be able to perform specific actions (like resetting passwords) without having full control over the domain.

---

## Objective

Allow Helpdesk users to:

- Reset user passwords
- Force password change at next logon

Without assigning Domain Admin rights.

---

## Implementation

### 1️⃣ Create a Security Group

Group created:

GG_Helpdesk

Location:

Company → Groups → Global

---

### 2️⃣ Add Members

User added:

it.admin

---

### 3️⃣ Delegate Permissions

Delegation performed on:

Company → Users OU

Permissions assigned:

- Reset user passwords
- Force password change at next logon

Using:

Delegate Control Wizard (ADUC)

---

## Testing

Logged in as:

corp\it.admin

Test performed:

- Open Active Directory Users and Computers (dsa.msc)
- Reset password for a user in HR OU

Result:

Operation successful without Domain Admin privileges.

---

## Screenshots

- screenshots/delegation/01-helpdesk-delegation.png
- screenshots/delegation/02-helpdesk-reset-password.png

---

## Key Takeaways

- Delegation allows granular permission management
- Avoids overuse of Domain Admin privileges
- Follows the principle of least privilege
- Reduces security risks and operational mistakes

This approach reflects real-world enterprise practices.
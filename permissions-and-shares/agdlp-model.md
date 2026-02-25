# 🔐 AGDLP Permission Model Implementation

## Overview

This lab implements the **AGDLP model**, a standard enterprise best practice for managing permissions in Active Directory environments.

AGDLP stands for:

- **A** – Accounts (Users)
- **G** – Global Groups
- **DL** – Domain Local Groups
- **P** – Permissions

This model ensures scalable, clean, and secure access control management.

---

## Why Use AGDLP?

Directly assigning permissions to users creates:

- Poor scalability
- Difficult auditing
- Administrative complexity
- Increased risk of misconfiguration

AGDLP separates identity from access control.

---

## Implementation in This Lab

### Step 1 – Accounts (Users)

Users are created inside department-specific OUs:


Company
└── Users
├── HR
├── IT
├── Sales
└── Management


Example user:


alice.martin


---

### Step 2 – Global Groups (Role-based)

Each department has a Global Security Group:


GG_HR
GG_IT
GG_Sales
GG_Management


Users are added to their respective Global group.

Example:


alice.martin → GG_HR


Global groups represent **who the user is** (department / role).

---

### Step 3 – Domain Local Groups (Resource-based)

Each secured resource has a Domain Local group:


DL_HR_Share_RW
DL_IT_Share_RW
DL_Sales_Share_RW
DL_Management_Share_RW


Global groups are added as members of Domain Local groups.

Example:


GG_HR → DL_HR_Share_RW


Domain Local groups represent **what resource is being accessed**.

---

### Step 4 – Permissions (NTFS)

Permissions are assigned ONLY to Domain Local groups.

Example on folder:


C:\Shares\HR


NTFS permission:


DL_HR_Share_RW → Modify


No user or Global group receives direct NTFS permissions.

---

## Complete Flow Example


alice.martin
↓
GG_HR
↓
DL_HR_Share_RW
↓
NTFS Modify permission on HR folder


---

## Benefits Achieved

✔ Clean permission structure  
✔ No direct user-to-permission assignment  
✔ Easier auditing  
✔ Scalable department-based access control  
✔ Industry-standard enterprise practice  

---

## Real-World Scenario Example

If Alice moves from HR to Sales:

Instead of modifying NTFS permissions:

1. Remove Alice from GG_HR
2. Add Alice to GG_Sales

Access is automatically updated.

No folder-level changes required.

---

## Key Takeaways

- Global groups manage identities
- Domain Local groups manage resources
- NTFS permissions are never assigned directly to users
- Separation of responsibility improves security and maintainability

This implementation reflects enterprise-level Active Directory permission management practices.
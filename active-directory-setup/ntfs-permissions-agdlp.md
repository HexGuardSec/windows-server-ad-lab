# 🔐 NTFS Permissions & AGDLP Implementation

This document describes the implementation of NTFS permissions using the AGDLP model.

---

# 🎯 Objective

Provide department-specific folder access using best practice group structure.

---

# 🗂️ Folder Structure

Created on the server:

C:\Shares
- IT
- HR
- Sales

📸 Screenshot:
- `screenshots/ntfs-agdlp/01-create-shares-structure.png`

---

# 👥 Domain Local Groups

Created:

- DL_IT_Share
- DL_HR_Share
- DL_Sales_Share

Scope: Domain Local  
Type: Security  

📸 Screenshot:
- `screenshots/ntfs-agdlp/02-create-domain-local-groups.png`

---

# 🔗 Group Nesting

Global Groups added to Domain Local Groups:

GG_IT → DL_IT_Share  
GG_HR → DL_HR_Share  
GG_Sales → DL_Sales_Share  

📸 Screenshot:
- `screenshots/ntfs-agdlp/03-nested-groups.png`

---

# 🔐 NTFS Permissions Applied

Each Domain Local Group was granted:

Permission: Modify  

📸 Screenshot:
- `screenshots/ntfs-agdlp/04-ntfs-permissions.png`

---

# 🧪 Access Testing

Access was tested from domain client accounts:

- Correct department → Access granted
- Other departments → Access denied

📸 Screenshot:
- `screenshots/ntfs-agdlp/05-access-test.png`

---

# 🧠 Concept Applied

AGDLP model:

Accounts → Global Groups → Domain Local Groups → Permissions

This ensures scalable and maintainable access control.

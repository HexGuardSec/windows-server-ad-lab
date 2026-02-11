# 🔁 Default Computers Container Redirection

This document describes the redirection of the default Active Directory Computers container.

---

# 🎯 Objective

Ensure that newly joined computers are automatically placed in a structured OU instead of the default container.

---

# ⚠ Problem

By default, computers are placed in:

CN=Computers

This container:
- Is not an OU
- Does not allow direct GPO linking

---

# 🛠️ Solution

Used the following PowerShell command:

```

redircmp "OU=Workstations,OU=Computers,OU=Company,DC=corp,DC=local"

```

📸 Screenshot:
- `screenshots/redirection/01-redircmp-command.png`

---

# 🧠 Result

All newly joined computers are automatically placed in:

OU=Workstations

This ensures proper GPO targeting and enterprise-level organization.

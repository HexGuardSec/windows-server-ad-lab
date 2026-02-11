# 👥 Users and Security Groups Configuration

This document describes user and group creation following enterprise best practices.

---

# 🎯 Objectives

- Create departmental users
- Create Global Security Groups
- Assign users to groups
- Prepare AGDLP model

---

# 👤 User Accounts

Created users:

- it.admin
- hr.user
- sales.user

Each user:
- Assigned to correct OU
- Strong password configured
- Forced password change at first login

📸 Screenshot:
- `screenshots/users-groups/01-create-gg-it.png`

---

# 👥 Global Security Groups

Created groups:

- GG_IT
- GG_HR
- GG_Sales

Scope: Global  
Type: Security  

📸 Screenshot:
- `screenshots/users-groups/02-all-global-groups.png`

---

# ➕ Group Membership

Each user was added to their corresponding Global Group.

📸 Screenshot:
- `screenshots/users-groups/04-add-users-to-groups.png`

---

# 🧠 Concept Applied

AGDLP (partial implementation):

Accounts → Global Groups

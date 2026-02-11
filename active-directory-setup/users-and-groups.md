# 👥 Users and Security Groups Configuration

This document describes the creation of users and security groups within the Active Directory environment.

The goal of this step is to implement proper identity and access management practices following enterprise standards.

---

## 🎯 Objectives

- Create departmental users
- Create security groups
- Assign users to appropriate groups
- Follow AGDLP best practice model

---

## 👤 User Accounts Created

The following users were created:

| Username     | Department |
|--------------|------------|
| it.admin     | IT         |
| hr.user      | HR         |
| sales.user   | Sales      |

Each user:
- Was created inside the appropriate OU
- Has a strong password
- Must change password at next logon

📸 Screenshot:
- `users-groups/03-create-it-user.png`

---

## 👥 Security Groups Created

The following Global Security Groups were created inside the `Groups` OU:

| Group Name  | Type     | Scope  |
|------------|----------|--------|
| GG_IT      | Security | Global |
| GG_HR      | Security | Global |
| GG_Sales   | Security | Global |

📸 Screenshots:
- `users-groups/01-create-gg-it.png`
- `users-groups/02-all-global-groups.png`

---

## 🔐 Why Global Security Groups?

- **Global scope**: Designed to contain users from the same domain
- **Security type**: Can be assigned permissions (NTFS, shared folders, etc.)

Distribution groups were not used because they are intended for email distribution only.

---

## ➕ User Membership Assignment

Each user was added to their corresponding department group:

- `it.admin` → `GG_IT`
- `hr.user` → `GG_HR`
- `sales.user` → `GG_Sales`

📸 Screenshot:
- `users-groups/04-add-user-to-group.png`

---

## 🧠 AGDLP Model Introduction

This lab follows the Microsoft-recommended AGDLP model:

```

Accounts → Global Groups → Domain Local Groups → Permissions

```

Current implementation covers:

```

Accounts → Global Groups

```

Future steps will implement:
- Domain Local Groups
- NTFS permissions assignment

This structure ensures scalable and maintainable access control in enterprise environments.
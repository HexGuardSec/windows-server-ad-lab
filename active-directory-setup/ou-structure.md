# 🏗️ Organizational Unit (OU) Structure Design

This document describes the Organizational Unit (OU) structure implemented in the Active Directory domain.

The objective of this step is to organize directory objects in a scalable, logical, and enterprise-ready hierarchy.

---

## 🎯 Design Goals

- Separate users, computers, and groups
- Prepare for future Group Policy Objects (GPO)
- Follow enterprise best practices
- Avoid using default AD containers (Users, Computers)

A clean OU structure ensures better delegation, easier administration, and precise GPO application.

---

## 🏢 Top-Level OU

A main OU named `Company` was created under the domain:

```

corp.local
│
└── OU=Company

```

📸 Screenshot:
- `ou-structure/01-create-company-ou.png`

### Rationale

Using a top-level OU prevents mixing custom objects with built-in containers and keeps the domain root clean.

---

## 📂 Main Organizational Units

Inside `Company`, three primary OUs were created:

```

Company
│
├── OU=Users
├── OU=Computers
└── OU=Groups

```

📸 Screenshot:
- `ou-structure/02-main-ous.png`

### Rationale

Separating object types improves:
- Administrative clarity
- GPO targeting
- Security delegation

---

## 👥 Users Sub-Structure

Inside `Users`, department-based OUs were created:

```

Users
│
├── OU=IT
├── OU=HR
└── OU=Sales

```

📸 Screenshot:
- `ou-structure/03-users-sub-ous.png`

### Rationale

Department-based OUs allow:
- Department-specific GPO application
- Delegated administration
- Logical user organization

---

## 💻 Computers Sub-Structure

Inside `Computers`, two sub-OUs were created:

```

Computers
│
├── OU=Workstations
└── OU=Servers

```

📸 Screenshot:
- `ou-structure/04-computers-sub-ous.png`

### Rationale

Separating workstations and servers allows:
- Different security policies
- Different patching strategies
- Clear infrastructure segmentation

---

## 🚫 Why Not Use Default Containers?

By default, Active Directory creates:
- `Users`
- `Computers`

These are not Organizational Units and do not allow direct GPO linking.

For enterprise environments, it is best practice to:
- Create custom OUs
- Move objects into structured containers
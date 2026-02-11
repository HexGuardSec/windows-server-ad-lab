# 🏢 Organizational Unit (OU) Structure Design

This document describes the OU hierarchy implemented in the domain.

The objective is to create a scalable and enterprise-ready directory structure.

---

# 🎯 Design Principles

- Separation of object types
- Department-based organization
- GPO-ready hierarchy
- Avoid use of default containers

---

# 🏗️ OU Hierarchy

```

corp.local
│
└── Company
├── Users
│   ├── IT
│   ├── HR
│   └── Sales
│
├── Computers
│   ├── Workstations
│   └── Servers
│
└── Groups

```

📸 Screenshots:
- `screenshots/ou-structure/01-create-company-ou.png`
- `screenshots/ou-structure/02-main-ous.png`
- `screenshots/ou-structure/03-users-sub-ous.png`
- `screenshots/ou-structure/04-computers-sub-ous.png`

---

# 🧠 Rationale

This structure enables:

- Targeted Group Policy application
- Clear department separation
- Easier delegation of administration
- Clean and scalable infrastructure
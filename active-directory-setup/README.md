# 🧩 Active Directory Domain Services Implementation

This section documents the deployment and configuration of Active Directory Domain Services (AD DS) within the enterprise lab environment.

The objective is to simulate a real-world domain infrastructure following Microsoft best practices.

---

# 📌 Modules Covered

## 1️⃣ AD DS Installation
- Role installation
- Domain Controller promotion
- Forest creation
- DNS integration
- Post-install validation

📄 See: `adds-installation.md`

---

## 2️⃣ Organizational Unit Structure
- Enterprise OU hierarchy
- Department separation
- Computers segregation

📄 See: `ou-structure.md`

---

## 3️⃣ Users and Security Groups
- Department-based user creation
- Global Security Groups
- Group membership assignment

📄 See: `users-and-groups.md`

---

## 4️⃣ Default Container Redirection
- Redirection of default Computers container
- Preparation for proper GPO targeting

📄 See: `redirection-default-container.md`

---

## 5️⃣ NTFS Permissions & AGDLP
- Domain Local Groups
- Nested group structure
- NTFS permission enforcement
- Access validation testing

📄 See: `ntfs-permissions-agdlp.md`

---

# 🧠 Enterprise Concepts Implemented

- AD-integrated DNS
- OU-based management
- AGDLP model
- Permission inheritance management
- Share vs NTFS permission separation
- Structured access control

---

# 🚀 Next Phase

- Group Policy Objects implementation
- Security baselines
- Advanced delegation
- PowerShell automation

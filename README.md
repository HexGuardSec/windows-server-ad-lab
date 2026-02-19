# 🪟 Windows Server Active Directory Lab

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Category](https://img.shields.io/badge/Category-Windows%20Server-blue)
![AD](https://img.shields.io/badge/Active%20Directory-Domain%20Services-darkblue)
![GPO](https://img.shields.io/badge/GPO-Group%20Policy-orange)
![PowerShell](https://img.shields.io/badge/PowerShell-Automation-blueviolet)

**Hands-on lab for learning Windows Server and Active Directory administration in a realistic enterprise environment.**  
This project simulates a small to medium business (SMB) infrastructure and focuses on best practices expected from junior IT support and system administrators.

---

## 🎯 Project Goals

- Build and manage a functional Active Directory domain
- Understand enterprise identity and access management
- Apply security and configuration policies using GPO
- Practice real-world administration tasks
- Document technical decisions like in a professional IT environment

This lab is designed to evolve progressively, from basic setup to more advanced administration and automation.

---

## 🧪 Lab Scope

| # | Area | Description |
|---|------|-------------|
| 1 | Windows Server Setup | Clean installation and base configuration |
| 2 | Active Directory | Domain creation and domain controller promotion |
| 3 | Group Policy | GPO creation, linking, and testing |
| 4 | Users & Groups | AD users, groups, and OU structure |
| 5 | Client Integration | Windows 11 client joined to the domain |
| 6 | DNS | Integrated DNS configuration and validation |
| 7 | Permissions | NTFS permissions and access control |
| 8 | Automation | PowerShell scripts for admin tasks |

---

## 🏗️ Lab Environment

- Hypervisor: VMware Workstation
- Server OS: Windows Server 2022
- Client OS: Windows 11
- Network Type: Internal LAN
- IP Configuration: Static IP on Domain Controller
- Domain Type: Active Directory Domain Services (AD DS)

---

## 📂 Repository Structure

```

windows-server-ad-lab/
│
├── README.md
├── windows-server-setup/
│   ├── screenshots/
│   └── network-and-base-config.md
│
├── active-directory-setup/
│   ├── screenshots/
│   ├── ou-structure.md
│   ├── adds-installation.md
│   ├── ntfs-permissions-agdlp.md
│   ├── redirection-default-container.md
│   ├── users-and-groups.md
│   └── README.md
│
├── group-policy-setup/
│   ├── screenshots/
│   ├── drive-mapping.md
│   ├── workstation-device-restrictions.md
│   ├── workstation-security-baseline.md
│   └── README.md
│
├── scripts/
│   └── ??
│
└── troubleshooting/
    ├── 01-gpo-not-applying.md
    ├── 02-drive-mapping-not-working.md
    └── 03-user-profile-temporary.md

```

---

## 🧠 Skills Practiced

- Windows Server installation and configuration
- Active Directory architecture and administration
- Organizational Units (OU) design
- User and group management
- DNS role and integration with AD
- Group Policy Objects (GPO)
- NTFS permissions and access control
- PowerShell basics for system administration
- Troubleshooting authentication and domain issues

---

## 🧑‍💼 Target Profile

This project targets:
- Junior IT Support
- Junior System Administrator
- Students and self-taught learners preparing for enterprise Windows environments

All configurations and decisions aim to reflect **real-world professional practices**, not lab shortcuts.

---

## 📌 Project Status

🔧 **Currently in progress**  
New features, configurations, and documentation are added as learning progresses.

---

## 📘 Notes

This repository acts as both:
- a technical lab
- a learning journal documenting decisions, issues, and solutions encountered during the setup

Each step is documented with screenshots and explanations to demonstrate understanding, not just execution.

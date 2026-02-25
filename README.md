# 🪟 Windows Server Active Directory Enterprise Lab

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Category](https://img.shields.io/badge/Category-Windows%20Server-blue)
![Active Directory](https://img.shields.io/badge/Active%20Directory-Enterprise-darkblue)
![GPO](https://img.shields.io/badge/GPO-Group%20Policy-orange)
![PowerShell](https://img.shields.io/badge/PowerShell-Automation-blueviolet)

---

## 🏢 Project Overview

This project simulates a Small-to-Medium Enterprise (SME) Active Directory environment built using **Windows Server 2022** and **Windows 11 clients**.

The objective is to design and implement a structured, secure, and scalable AD infrastructure following real-world best practices expected from a **Junior IT Support / System Administrator**.

This lab focuses on architecture, access control, security, automation, and troubleshooting.

---

## 🎯 Project Goals

- Design a clean and scalable OU structure
- Implement enterprise-standard group strategy (AGDLP)
- Secure departmental file shares using NTFS permissions
- Configure centralized drive mapping via GPO
- Apply security policies to users and computers
- Automate administrative tasks using PowerShell
- Document troubleshooting scenarios like in a real IT environment

---

## 🏗️ Lab Environment

- Hypervisor: VMware Workstation
- Server OS: Windows Server 2022 (Domain Controller)
- Client OS: Windows 11 (Domain Joined)
- Network: Internal LAN
- IP Configuration: Static IP on Domain Controller
- Domain: `corp.local`

---

## 🗂️ Active Directory Architecture

### Organizational Unit Design
```

Company
├── Users
│ ├── HR
│ ├── IT
│ ├── Sales
│ └── Management
│
├── Computers
│ ├── Workstations
│ └── Servers
│
├── Groups
│ ├── Global
│ └── DomainLocal
│
└── Disabled_Objects

```
This structure separates identities, devices, and security objects to ensure clarity, scalability, and proper policy targeting.

---

## 🔐 Access Control Model (AGDLP)

This lab implements the industry-standard **AGDLP model**:

**Accounts → Global → Domain Local → Permissions**

Example:


alice.martin
↓
GG_HR
↓
DL_HR_Share_RW
↓
NTFS Modify permission on HR folder


### Why AGDLP?

- No direct user-to-permission assignment
- Scalable permission management
- Easier auditing and delegation
- Enterprise best practice

---

## 📁 File Server & Permission Strategy

Each department has a dedicated secured folder:

- HR
- IT
- Sales
- Management

### Share Permissions


Everyone → Full Control


(Access control handled exclusively via NTFS)

### NTFS Permissions

Permissions are assigned only to **Domain Local groups**, not users or Global groups.

Example:


DL_HR_Share_RW → Modify


This ensures centralized and clean permission management.

---

## 🧭 Drive Mapping Strategy

A single GPO is used:


GPO - Department Drive Mapping


Using:

- Group Policy Preferences
- Action: Update
- Item-Level Targeting (Security Group based)
- Run in logged-on user’s security context

### Result:

- HR → H:
- IT → I:
- Sales → S:
- Management → M:

Users only see and access their own department drive.

---

## 🛡️ Group Policy Implementation

### User Security Baseline
- Screen lock timeout
- Password-protected screensaver
- Control Panel restrictions

### Workstation Security Baseline
- Device restrictions
- Security configurations
- Computer-level policy enforcement

---

## ⚙️ Automation

PowerShell scripts included for:

- Single user creation
- Bulk user import via CSV
- Account management (enable/disable/reset password)

Scripts are structured and documented in the `/scripts` directory.

---

## 🧪 Troubleshooting Scenarios

Documented real-world issues encountered during the lab:

- Drive mapping not applying due to group token refresh
- Security context misconfiguration
- NTFS vs Share permission conflicts
- Temporary user profile issue
- GPO not applying correctly

Each issue includes diagnostic steps and resolution.

---

## 🧠 Skills Demonstrated

- Windows Server installation & configuration
- Active Directory architecture design
- OU structuring and object management
- AGDLP permission model
- NTFS vs Share permission control
- Group Policy Objects (User & Computer)
- Group Policy Preferences
- PowerShell automation
- Troubleshooting domain & authentication issues

---

## 🎯 Target Role

This project demonstrates practical skills aligned with:

- Junior IT Support
- Junior System Administrator
- Internal IT Technician
- Data Center Technician (Windows environments)

The focus is on structured implementation, not lab shortcuts.

---

## 📌 Project Status

🔧 In Progress – Continuously evolving with new features, automation, and enterprise-level improvements.

---

## 📘 Purpose of This Repository

This repository serves as:

- A hands-on enterprise simulation lab
- A technical documentation portfolio
- A demonstration of real-world Windows administration practices
- A structured learning progression toward professional IT roles

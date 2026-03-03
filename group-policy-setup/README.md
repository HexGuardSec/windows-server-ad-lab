# 🪟 Windows Server Active Directory Enterprise Lab

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Category](https://img.shields.io/badge/Category-Windows%20Server-blue)
![Active Directory](https://img.shields.io/badge/Active%20Directory-Enterprise-darkblue)
![GPO](https://img.shields.io/badge/GPO-Group%20Policy-orange)
![PowerShell](https://img.shields.io/badge/PowerShell-Automation-blueviolet)

---

## 🏢 Project Overview

This project simulates a Small-to-Medium Enterprise (SME) Active Directory infrastructure built using **Windows Server 2022** and **Windows 11 clients**.

The objective is to design, secure, and manage a structured Active Directory environment aligned with real-world IT Support / Junior System Administrator practices.

The lab evolves progressively from basic deployment to enterprise-grade configuration.

---

## 🎯 Project Goals

- Design a clean and scalable OU structure
- Implement enterprise-standard group strategy (AGDLP)
- Secure departmental file shares using NTFS
- Configure centralized drive mapping via GPO
- Apply domain-wide and granular security policies
- Automate administrative tasks using PowerShell
- Document troubleshooting scenarios realistically

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


The OU structure separates identities, devices, and security objects for scalability and policy targeting.

---

## 🔐 Access Control Model (AGDLP)

This lab implements the industry-standard AGDLP model:

Accounts → Global Groups → Domain Local Groups → Permissions

Example flow:

alice.martin  
→ GG_HR  
→ DL_HR_Share_RW  
→ NTFS Modify permission on HR folder

This ensures:

- Clean delegation
- No direct user-to-permission assignment
- Scalable access management
- Enterprise-level best practice

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

Assigned only to Domain Local groups:

Example:

DL_HR_Share_RW → Modify

---

## 🧭 Drive Mapping Strategy

A single centralized GPO:

GPO - Department Drive Mapping

Using:

- Group Policy Preferences
- Action: Update
- Item-Level Targeting
- Logged-on user security context

Department drive mapping:

- HR → H:
- IT → I:
- Sales → S:
- Management → M:

Users only see their authorized department drive.

---

## 🛡️ Security Implementation

### 1️⃣ User Security Baseline
- Screen lock timeout
- Password-protected screensaver
- Control Panel restrictions

### 2️⃣ Workstation Security Baseline
- Computer-level policy enforcement
- Device restrictions
- System hardening policies

### 3️⃣ Domain Password & Lockout Policy

Configured in Default Domain Policy:

- Minimum password length: 10
- Password complexity: Enabled
- Password history enforced
- Lockout threshold: 5 attempts
- Lockout duration: 15 minutes

### 4️⃣ Fine-Grained Password Policy (FGPP)

Implemented for IT administrators:

- Minimum password length: 14
- Lockout threshold: 3 attempts
- Lockout duration: 30 minutes
- Precedence-based override

Configured via:
Active Directory Administrative Center (not GPO)

---

## ⚙️ Automation

PowerShell scripts included for:

- Single user creation
- Bulk user import via CSV
- Account management
- FGPP verification

---

## 🧪 Troubleshooting Scenarios

Documented real-world issues:

- Drive mapping not applying (token refresh issue)
- Security context misconfiguration
- NTFS vs Share permission conflict
- Temporary profile issue
- Account lockout testing
- GPO troubleshooting with gpresult

---

## 🧠 Skills Demonstrated

- Active Directory architecture design
- OU planning & delegation
- AGDLP permission model
- NTFS vs Share management
- Group Policy configuration (User & Computer)
- Domain-wide security enforcement
- Fine-Grained Password Policy
- PowerShell administration
- Enterprise troubleshooting methodology

---

## 🎯 Target Roles

This project aligns with:

- Junior IT Support
- Junior System Administrator
- Internal IT Technician
- Windows Infrastructure Support

The focus is on structured implementation, not lab shortcuts.

---

## 📌 Project Status

🔧 In Progress – Continuously evolving toward enterprise-level administration skills.
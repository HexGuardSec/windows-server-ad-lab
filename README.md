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

This lab focuses on architecture, access control, security, networking, automation, and troubleshooting.

---

## 🎯 Project Goals

- Design a clean and scalable OU structure
- Implement enterprise-standard group strategy (AGDLP)
- Secure departmental file shares using NTFS permissions
- Configure centralized drive mapping via GPO
- Apply security policies to users and computers
- Implement DHCP and DNS infrastructure
- Monitor authentication and security events (Audit Policy)
- Delegate administrative tasks securely
- Automate administrative tasks using PowerShell
- Document troubleshooting scenarios like in a real IT environment

---

## 🏗️ Lab Environment

- Hypervisor: VMware Workstation
- Server OS: Windows Server 2022 (Domain Controller)
- Client OS: Windows 11 (Domain Joined)
- Network: Host-only internal network
- Services:
  - Active Directory Domain Services (AD DS)
  - DNS (integrated with AD)
  - DHCP Server
- Domain: `corp.local`

---

## 🌐 Network & Infrastructure

### DNS (Critical for Active Directory)

Active Directory relies entirely on DNS for:

- Domain Controller discovery
- Authentication (LDAP / Kerberos)
- Service location (SRV records)

Validation commands:


nslookup corp.local
nslookup -type=SRV _ldap._tcp.dc._msdcs.corp.local


---

### DHCP Configuration

DHCP is used to dynamically assign network configuration to clients.

Scope:

- Range: 192.168.10.100 – 192.168.10.200
- Subnet: 255.255.255.0
- DNS: Domain Controller (192.168.10.10)
- Gateway: 192.168.10.1

⚠️ Important:

A misconfigured DNS option in DHCP can completely break Active Directory functionality.

---

## 🗂️ Active Directory Architecture

### Organizational Unit Design
```

Company
│
├── Users
    ├── HR
    ├── IT     
    ├──Sales    
    └── Management
│
└── Computers
    ├── Workstations
    └── Servers
│
└── Groups
    ├── Global
    └── DomainLocal
│
└── Admin
    └── Admin Accounts
│
└── Service Accounts
│
└── Disabled_Objects

```

This structure ensures scalability, security, and proper GPO targeting.

---

## 🔐 Access Control Model (AGDLP)

**Accounts → Global → Domain Local → Permissions**

Example:


alice.martin
↓
GG_HR
↓
DL_HR_Share_RW
↓
NTFS Modify permission on HR folder


### Benefits

- No direct user-to-permission assignment
- Scalable access management
- Easier auditing and delegation
- Enterprise standard

---

## 📁 File Server & Permission Strategy

### Share Permissions


Everyone → Full Control


### NTFS Permissions

Assigned only to **Domain Local groups**

Example:


DL_HR_Share_RW → Modify


---

## 🧭 Drive Mapping Strategy

Single GPO used:


GPO - Department Drive Mapping


Configured with:

- Group Policy Preferences
- Action: Update
- Item-Level Targeting (Security Groups)
- User security context

### Result

- HR → H:
- IT → I:
- Sales → S:
- Management → M:

---

## 🛡️ Group Policy Implementation

### User Security Baseline

- Screen lock timeout
- Password-protected screensaver
- Control Panel restrictions

### Workstation Security Baseline

- Device restrictions
- Security configurations

---

## 🔐 Delegation of Control

Helpdesk permissions were delegated using a security group:


GG_Helpdesk


Allowed actions:

- Reset user passwords
- Force password change at next logon

This avoids overuse of Domain Admin privileges and follows the **principle of least privilege**.

---

## 🔍 Audit Policy & Security Monitoring

Audit policies were configured to monitor authentication activity.

### Key Events

- 4768 → Kerberos authentication (successful logon)
- 4771 → Kerberos pre-authentication failed
- 4624 → Successful logon
- 4625 → Failed logon
- 4724 → Password reset

### Key Insight

In Active Directory environments, authentication is handled by **Kerberos**, not only classic logon events.

---

## ⚙️ Automation

PowerShell scripts included for:

- User creation
- Bulk import (CSV)
- Account management

---

## 🧪 Troubleshooting Scenarios

Real-world issues documented:

- GPO not applying
- Drive mapping issues
- NTFS vs Share conflicts
- DHCP misconfiguration (wrong DNS)
- Domain authentication issues
- Broken secure channel

---

## 🧠 Skills Demonstrated

- Active Directory architecture design
- DNS & DHCP integration
- GPO (User & Computer)
- Security hardening
- Delegation of control
- Kerberos authentication understanding
- Troubleshooting enterprise environments
- PowerShell automation

---

## 🎯 Target Role

- Junior IT Support
- Junior System Administrator
- Internal IT Technician

---

## 📌 Project Status

🔧 In Progress – continuously evolving with enterprise features and improvements.

---

## 📘 Purpose of This Repository

- Hands-on enterprise simulation
- Technical portfolio
- Real-world IT practices
- Structured learning progression

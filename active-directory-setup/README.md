# 🧩 Active Directory Domain Services (AD DS) Setup

This document describes the installation and configuration of Active Directory Domain Services (AD DS) on the Windows Server used in this lab.

The objective of this step is to deploy a functional and stable Active Directory domain, following enterprise best practices, and to validate all critical services after installation.

---

## 🎯 Objectives

- Promote the server to a Domain Controller
- Create a new Active Directory forest and domain
- Integrate DNS with Active Directory
- Validate domain functionality after installation

This step represents the core foundation of any Windows enterprise infrastructure.

---

## 🛠️ AD DS Role Installation

The **Active Directory Domain Services** role was installed using Server Manager.

📸 Screenshots:
- `01-adds-role-selection.png`
- `02-adds-install-confirmation.png`

### Rationale
Installing the AD DS role prepares the server to host directory services but does not yet create a domain.
This separation between role installation and domain promotion reflects the real deployment process in enterprise environments.

---

## 🏗️ Domain Controller Promotion

After the role installation, the server was promoted to a Domain Controller.

**Deployment option:** Add a new forest  
**Domain name:** `corp.local`

📸 Screenshots:
- `03-new-forest-and-domain-name`

### Rationale
A new forest was created to simulate a fresh enterprise environment.
The `corp.local` domain name is commonly used in lab and internal environments and clearly represents a corporate domain.

---

## ⚙️ Domain Controller Options

**Forest functional level:** Windows Server 2016 or higher  
**Domain functional level:** Windows Server 2016 or higher  
**Roles enabled:**
- DNS Server
- Global Catalog

**RODC:** Disabled  
**DSRM password:** Configured securely

📸 Screenshot:
- `04-domain-controller-options.png`

### Rationale
Modern functional levels ensure compatibility with current Windows features.
DNS integration is mandatory for Active Directory, and the Global Catalog is required for authentication and directory searches.

---

## 🌐 DNS Configuration

During the promotion process, DNS delegation warnings were displayed.

📸 Screenshot:
- `05-dns-delegation-warning.png`

### Rationale
DNS delegation warnings are expected when creating a new forest in a lab or standalone environment.
The DNS zone is created locally and integrated with Active Directory.

---

## 🧾 NetBIOS & Database Paths

**NetBIOS name:** Automatically assigned (CORP)  
**Database, logs, SYSVOL paths:** Default locations

📸 Screenshots:
- `06-netbios-name.png`
- `07-adds-paths.png`

### Rationale
Default NetBIOS naming and paths are standard for small to medium business environments.
Custom paths are typically used only in large or highly specialized infrastructures.

---

## 🔄 Installation Review & Reboot

The configuration was reviewed before starting the installation.
The server rebooted automatically after the promotion process.

📸 Screenshots:
- `08-adds-review.png`
- `09-domain-login`

---

## ✅ Post-Installation Validation

After reboot, several checks were performed to confirm that Active Directory was fully operational.

📸 Screenshots:
- `10-adds-server-manager.png`
- `11-dns-zone.png`
- `12-aduc-domain.png`

### Validation Steps
- Successful login using `CORP\Administrator`
- AD DS role running without errors in Server Manager
- DNS zone `corp.local` present and populated
- Domain visible and accessible in Active Directory Users and Computers (ADUC)

These checks confirm that the domain controller is functioning correctly.

---

## ✔️ Status

✔ Active Directory Domain Services installed  
✔ Domain Controller successfully deployed  
✔ DNS integrated and operational  
✔ Domain validated and ready for administration  

---

## ⏭️ Next Steps

The next phase of this lab will focus on:
- Designing a proper Organizational Unit (OU) structure
- Creating users and security groups
- Applying Group Policy Objects (GPO)

This will simulate real-world Active Directory administration tasks in an enterprise environment.

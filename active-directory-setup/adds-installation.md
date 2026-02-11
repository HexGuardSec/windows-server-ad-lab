# 🏗️ Active Directory Domain Services Installation

This document describes the installation and configuration of Active Directory Domain Services (AD DS) within the lab environment.

The objective is to deploy a fully functional Domain Controller using enterprise best practices.

---

# 🎯 Objectives

- Install the AD DS role
- Promote the server to Domain Controller
- Create a new forest
- Integrate DNS
- Validate post-installation services

---

# 🛠️ Role Installation

The Active Directory Domain Services role was installed via Server Manager.

📸 Screenshots:
- `screenshots/adds-installation/01-adds-role-selection.png`

The DNS role was installed automatically as part of AD DS deployment.

---

# 🌲 Domain Controller Promotion

Deployment type:
- Add a new forest

Domain name:
- `corp.local`

📸 Screenshots:
- `screenshots/adds-installation/02-new-forest-and-domain-name`

---

# ⚙️ Domain Controller Configuration

- Forest Functional Level: Windows Server 2016+
- Domain Functional Level: Windows Server 2016+
- DNS Server: Enabled
- Global Catalog: Enabled
- RODC: Disabled

📸 Screenshots:
- `screenshots/adds-installation/03-domain-controller-options.png`

DNS delegation warning is expected in standalone lab environments.

📸 Screenshot:
- `screenshots/adds-installation/04-dns-delegation-warning.png`

---

# 🔄 Installation & Reboot

The configuration was reviewed and installed.
The server rebooted automatically after promotion.

---

# ✅ Post-Installation Validation

After reboot, the following validations were performed:

- Successful domain login
- AD DS running in Server Manager
- DNS zone `corp.local` present
- Domain visible in ADUC

📸 Screenshots:
- `screenshots/validation/01-server-manager-ok.png`
- `screenshots/validation/02-dns-zone.png`
- `screenshots/validation/03-aduc-domain.png`

---

# ✔ Status

✔ Domain Controller successfully deployed  
✔ DNS integrated  
✔ Domain operational  

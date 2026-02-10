# 🪟 Windows Server Installation & Base Setup

This section documents the installation of Windows Server 2022 used as the foundation for the Active Directory lab.

The goal of this step is to deploy a clean, stable, and enterprise-ready Windows Server environment before adding any roles or services.

All critical decisions are documented with screenshots to demonstrate understanding and best practices.

---

## 🧱 Operating System Selection

**Edition:** Windows Server 2022 Standard  
**Installation Type:** Desktop Experience

📸 Screenshot: `01-edition-selection.png`

### Rationale
Desktop Experience was selected to facilitate learning, administration, and documentation.
It provides full access to graphical management tools such as Server Manager, Active Directory Users and Computers, and DNS Manager.

Server Core is more suitable for hardened production environments and will be practiced later once the fundamentals are fully mastered.

---

## ⚙️ Installation Type

**Method:** Custom installation (clean install)

📸 Screenshot: `02-installation-type.png`

### Rationale
A custom installation ensures a clean deployment with no legacy configurations.
This reflects enterprise best practices where servers are deployed from scratch to guarantee stability and predictability.

---

## 💽 Disk Configuration

**Disk Layout:** Default Windows automatic partitioning

📸 Screenshot: `03-disk-selection.png`

### Rationale
The disk was left unpartitioned to allow Windows to create the required system partitions automatically.
This is a standard approach in enterprise environments for simple server deployments.

---

## 🔐 Local Administrator Configuration

**Account:** Built-in Administrator  
**Password:** Defined during first boot

📸 Screenshot: `04-administrator-password.png`

### Rationale
A strong local Administrator password was configured immediately after installation.
This step is critical to secure the server before any network services are enabled.

---

## 🖥️ First Login & Server Validation

📸 Screenshots:
- `05-first-login.png`
- `06-server-manager.png`

### Validation Steps
- Successful login with the local Administrator account
- Server Manager loads without errors
- Server is ready for post-installation configuration

This confirms that the operating system is properly installed and operational.

---

## ✅ Installation Status

✔ Windows Server installed successfully  
✔ System ready for network configuration  
✔ Ready for Active Directory Domain Services installation

The next step will focus on:
- Server naming
- Static IP configuration
- Time and regional settings

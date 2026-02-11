# 🧩 Windows Server Installation & Base Configuration

This document describes the installation and initial configuration of Windows Server 2022 before deploying Active Directory Domain Services.

The goal of this phase is to build a stable, secure, and enterprise-ready foundation.

---

# 🪟 Windows Server Installation

## 1️⃣ Edition Selection

Windows Server 2022 Standard (Desktop Experience) was selected.

📸 Screenshot:
- `screenshots/installation/01-edition-selection.png`

### Rationale

Desktop Experience was chosen to facilitate administration, documentation, and learning.  
Server Core is typically used in hardened production environments.

---

## 2️⃣ Installation Type

A clean installation was performed using the custom installation option.

📸 Screenshot:
- `screenshots/installation/02-installation-type.png`

---

## 3️⃣ Disk Selection

The default Windows partitioning scheme was used.

📸 Screenshot:
- `screenshots/installation/03-disk-selection.png`

### Rationale

Default partitioning is standard practice for small to medium business deployments.

---

## 4️⃣ Administrator Account Configuration

A strong password was set for the built-in local Administrator account.

📸 Screenshot:
- `screenshots/installation/04-administrator-password.png`

---

## 5️⃣ First Login

Successful login using the local Administrator account.

📸 Screenshot:
- `screenshots/installation/05-first-login.png`

---

## 6️⃣ Initial Server Manager Check

Server Manager launched successfully with no critical errors.

📸 Screenshot:
- `screenshots/installation/06-server-manager.png`

---

# ⚙️ Base System Configuration

## 1️⃣ Server Renaming

Hostname configured as:

`SRV-DC01`

📸 Screenshot:
- `screenshots/base-config/01-rename-server.png`

### Rationale

Using a structured naming convention ensures scalability and clarity in enterprise environments.

---

## 2️⃣ IPv4 Configuration

Network settings were manually configured.

📸 Screenshot:
- `screenshots/base-config/02-ipv4-configuration.png`

---

## 3️⃣ Static IP Confirmation

Static IP configuration validated.

📸 Screenshot:
- `screenshots/base-config/03-ip-static-confirmation.png`

### Configuration Used

- IP Address: 192.168.142.10  
- Subnet Mask: 255.255.255.0  
- Default Gateway: 192.168.142.1  
- Preferred DNS: 127.0.0.1  

### Rationale

Domain Controllers must use a static IP address.  
Active Directory depends entirely on DNS for authentication and service discovery.

---

## 4️⃣ Time Zone Configuration

Time zone configured to match the deployment region.

📸 Screenshot:
- `screenshots/base-config/04-timezone-settings.png`

### Rationale

Kerberos authentication is time-sensitive. Incorrect time configuration can break domain authentication.

---

## 5️⃣ Network Validation

Network configuration verified using `ipconfig /all`.

📸 Screenshot:
- `screenshots/base-config/05-ipconfig-validation.png`

---

## 6️⃣ Final Server Validation

Final verification in Server Manager after configuration.

📸 Screenshot:
- `screenshots/base-config/06-server-manager-clean.png`

---

# ✅ Status Summary

✔ Windows Server installed  
✔ Local Administrator secured  
✔ Server renamed  
✔ Static IP configured  
✔ DNS prepared  
✔ Time synchronized  
✔ System validated  

The server is now fully prepared for Active Directory Domain Services deployment.
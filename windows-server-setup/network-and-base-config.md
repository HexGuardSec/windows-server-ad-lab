# 🧩 Windows Server Base Configuration & Network Setup

This document describes the post-installation base configuration performed on the Windows Server before deploying Active Directory Domain Services.

The objective of this step is to ensure system stability, network predictability, and compliance with enterprise best practices.

---

## 🖥️ Server Naming Convention

**Hostname:** `SRV-DC01`

📸 Screenshots:
- `07-computer-name.png`
- `08-rename-server.png`

### Rationale
A clear and consistent naming convention is essential in enterprise environments.
The chosen hostname follows a scalable pattern:

- `SRV` → Server
- `DC` → Domain Controller (future role)
- `01` → First domain controller

Renaming the server at this stage prevents issues that may occur if the hostname is changed after Active Directory installation.

---

## 🌐 Network Configuration (Static IP)

**IP Address:** `192.168.142.10`  
**Subnet Mask:** `255.255.255.0`  
**Default Gateway:** `192.168.142.1`  
**Preferred DNS:** `127.0.0.1`

📸 Screenshots:
- `09-ipv4-configuration.png`
- `10-ip-static-confirmation.png`

### Rationale
A Domain Controller must use a static IP address to ensure reliable name resolution and authentication services.

The DNS server is configured to point to itself, which is a standard practice once the server hosts Active Directory-integrated DNS.

---

## 🕒 Time Zone & System Clock

**Time Zone:** UTC+01:00 (Paris)

📸 Screenshot:
- `11-timezone-settings.png`

### Rationale
Active Directory relies heavily on time synchronization for Kerberos authentication.
Ensuring correct time zone and system clock configuration prevents authentication and replication issues.

---

## 🔍 Post-Configuration Validation

📸 Screenshots:
- `12-server-manager-clean.png`
- `13-ipconfig-validation.png`

### Validation Checklist
- Server Manager loads without errors
- Server hostname is correctly applied
- Network configuration is persistent
- DNS settings are correctly configured

These checks confirm that the server is properly prepared for Active Directory Domain Services installation.

---

## ✅ Configuration Status

✔ Server renamed and rebooted  
✔ Static IP and DNS configured  
✔ Time zone correctly set  
✔ System validated and ready  

The next step will focus on installing and configuring **Active Directory Domain Services (AD DS)**.

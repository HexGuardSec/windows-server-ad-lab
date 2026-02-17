# 💾 HR Drive Mapping via Group Policy

This document describes the implementation of automatic drive mapping for HR users using Group Policy Preferences.

The objective is to provide seamless access to department shares without requiring manual UNC paths.

---

# 🎯 Objectives

- Automatically map HR shared folder
- Assign drive letter H:
- Restrict mapping to HR group members
- Validate policy application
- Troubleshoot filtering issues

---

# 🛠️ GPO Creation

GPO Name:

GPO - HR Drive Mapping

Linked to:

OU=Users

📸 Screenshot:
- `screenshots/drive-mapping/01-gpo-linked-to-users.png`

---

# 🔧 Drive Map Configuration

Location:

User Configuration  
→ Preferences  
→ Windows Settings  
→ Drive Maps  

New → Mapped Drive

Settings:

- Action: Create
- Location: \\SRV-DC01\Shares\HR
- Drive Letter: H:
- Reconnect: Enabled

📸 Screenshot:
- `screenshots/drive-mapping/02-drive-map-configuration.png`

---

# 🎯 Item-Level Targeting

Instead of relying solely on Security Filtering, Item-Level Targeting was configured.

Common → Item-Level Targeting → Targeting

Condition added:

Security Group = GG_HR

📸 Screenshot:
- `screenshots/drive-mapping/03-item-level-targeting.png`

---

# 🔎 Validation

Policy applied using:

gpupdate

User logoff and logon performed.

Verification:

gpresult /r

📸 Screenshot:
- `screenshots/drive-mapping/04-gpresult-drive-map-applied.png`

---

# 🧪 Testing

After logon, drive H: appeared automatically.

Drive path confirmed:

\\SRV-DC01\Shares\HR

📸 Screenshot:
- `screenshots/drive-mapping/05-drive-visible.png`

---

# 🧠 Troubleshooting Encountered

Initial configuration using Security Filtering only did not apply correctly.

Root cause:

Removing Authenticated Users affected policy processing behavior.

Resolution:

Re-added Authenticated Users and implemented Item-Level Targeting instead.

---

# ✅ Result

✔ Automatic drive mapping operational  
✔ Targeted to HR group only  
✔ Enterprise-style implementation  
✔ GPO troubleshooting validated  

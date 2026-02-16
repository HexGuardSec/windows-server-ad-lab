# 🔌 Workstation Device Restrictions (Computer Configuration)

This document describes the implementation of device-level restrictions on domain workstations.

The objective is to block removable storage devices using Group Policy.

---

# 🎯 Objectives

- Block USB storage access
- Apply computer-level policy
- Validate with gpresult

---

# 🛠️ GPO Configuration

GPO Name:

GPO - USB Block Test

Linked to:

OU=Workstations

📸 Screenshot:
- `screenshots/workstation-device-restrictions/01-gpo-created-and-linked.png`

---

# 🔒 USB Storage Block

Location:

Computer Configuration  
→ Policies  
→ Administrative Templates  
→ System  
→ Removable Storage Access  

Setting:

All Removable Storage classes: Deny all access → Enabled

📸 Screenshot:
- `screenshots/workstation-device-restrictions/02-usb-block-enabled.png`

---

# 🔎 Policy Application

Applied using:

gpupdate /target:computer

System reboot required.

Verification:

gpresult /scope computer /r

📸 Screenshot:
- `screenshots/workstation-device-restrictions/03-gpresult-usb-gpo-applied.png`

---

# 🧪 Testing

USB storage device connected to client workstation.

Access denied as expected.

---

# 🧠 Key Concepts Learned

- Difference between User and Computer Configuration
- GPO linking and OU hierarchy
- Troubleshooting GPO application
- SYSVOL communication validation

---

# ✅ Result

✔ Computer-level GPO successfully enforced  
✔ USB storage blocked  
✔ Policy validated via command-line tools  

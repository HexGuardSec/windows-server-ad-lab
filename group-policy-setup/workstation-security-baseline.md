# 🖥️ Workstation Security Baseline (User Configuration)

This document describes the implementation of a basic workstation security baseline using Group Policy.

The objective is to enforce user-level restrictions for domain users.

---

# 🎯 Objectives

- Restrict access to Control Panel
- Enforce automatic screen lock
- Validate policy application

---

# 🛠️ GPO Configuration

GPO Name:

GPO - Workstations Security Baseline

Linked to:

OU=Users

📸 Screenshot:
- `screenshots/workstation-security-baseline/01-gpo-linked-to-users-ou.png`

---

# 🔒 Control Panel Restriction

Location:

User Configuration  
→ Policies  
→ Administrative Templates  
→ Control Panel  

Setting:

Prohibit access to Control Panel and PC settings → Enabled

📸 Screenshot:
- `screenshots/workstation-security-baseline/02-control-panel-blocked-setting.png`

---

# 🔐 Screen Saver Enforcement

Location:

User Configuration  
→ Administrative Templates  
→ Control Panel  
→ Personalization  

Configured:

- Enable screen saver → Enabled  
- Screen saver timeout → 300 seconds  
- Password protect the screen saver → Enabled  

📸 Screenshot:
- `screenshots/workstation-security-baseline/03-screensaver-settings.png`

---

# 🔎 Validation

Policy applied using:

gpupdate /force

Verification:

gpresult /r

📸 Screenshot:
- `screenshots/workstation-security-baseline/04-gpresult-user-policy-applied.png`

---

# 🧪 Testing

- Control Panel access blocked successfully
- Screen saver lock enforced

📸 Screenshot:
- `screenshots/workstation-security-baseline/05-control-panel-blocked-test.png`

---

# ✅ Result

✔ User restrictions enforced  
✔ Policy successfully applied  
✔ GPO troubleshooting validated  

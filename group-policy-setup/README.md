# 🧩 Group Policy Implementation

This section documents the implementation of Group Policy Objects (GPO) within the enterprise Active Directory lab.

The policies configured reflect real-world SME (Small-to-Medium Enterprise) administration practices.

---

# 📌 Implemented Policies

## 1️⃣ User Security Baseline

User-level security restrictions applied to domain users.

Includes:
- Screen lock timeout
- Password-protected screensaver
- Control Panel restrictions

See:
workstation-security-baseline.md

---

## 2️⃣ Workstation Security Baseline

Computer-level security configuration applied to domain workstations.

Includes:
- Device control policies
- Computer configuration hardening
- Policy enforcement at machine level

See:
workstation-device-restrictions.md

---

## 3️⃣ Department Drive Mapping

Centralized drive mapping using a single GPO with:

- Group Policy Preferences
- Action: Update
- Item-Level Targeting (Security Group-based)
- Run in logged-on user's security context

Department mappings:

- HR → H:
- IT → I:
- Sales → S:
- Management → M:

See:
drive-mapping.md

---

## 4️⃣ Domain Password & Account Lockout Policy

Configured in the Default Domain Policy.

Includes:
- Password complexity enforcement
- Password history
- Account lockout threshold
- Lockout duration configuration

See:
account-lockout-policy.md

---

# 🧠 Concepts Covered

- GPO linking to Organizational Units
- User vs Computer Configuration
- Default Domain Policy scope
- Security filtering vs Item-Level Targeting
- Group Policy Preferences
- gpupdate and gpresult usage
- Account lockout behavior
- Domain-wide vs OU-level policies
- Real-world GPO troubleshooting

---

# 🎯 Outcome

The environment now includes:

- Structured user and computer policy separation
- Centralized department resource mapping
- Domain-level security enforcement
- Enterprise-aligned configuration standards

This setup reflects practical Active Directory management expected from Junior IT Support / System Administrator roles.
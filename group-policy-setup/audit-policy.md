# 🔍 Audit Policy Configuration

## Overview

This section demonstrates how audit policies are configured to monitor authentication and user activity in an Active Directory environment.

In domain environments, authentication is handled by Kerberos, which generates specific security events.

---

## Configuration

Audit policies were configured in the Default Domain Policy:

Computer Configuration  
→ Policies  
→ Windows Settings  
→ Security Settings  
→ Advanced Audit Policy Configuration  

---

## Enabled Policies

### Logon
- Audit Logon → Success, Failure

### Account Logon
- Audit Credential Validation → Success, Failure
- Audit Kerberos Authentication Service → Success, Failure
- Audit Kerberos Service Ticket Operations → Success, Failure

---

## Testing

The following actions were performed:

- Successful user logon
- Failed logon attempts (wrong password)
- Password reset using delegated account

---

## Event Viewer Analysis

Logs were analyzed in:

Event Viewer  
→ Windows Logs → Security  

---

## Key Event IDs

### Kerberos (Domain Authentication)

- **4768** → Kerberos Ticket Granting Ticket (TGT) request (successful logon)
- **4771** → Kerberos pre-authentication failed (wrong password)

### Classic Logon

- **4624** → Successful logon
- **4625** → Failed logon

### Account Management

- **4724** → Password reset attempt

---

## Screenshots

- screenshots/audit/01-audit-policy-config.png
- screenshots/audit/02-event-4771-failed-login.png
- screenshots/audit/03-event-4768-success-login.png
- screenshots/audit/04-event-4724-password-reset.png

---

## Key Takeaways

- Active Directory uses Kerberos for authentication
- Failed logons may generate Kerberos events instead of standard logon events
- Audit policies are essential for monitoring and security analysis
- Event Viewer is a critical tool for troubleshooting authentication issues

This reflects real-world enterprise monitoring practices.
# 02 - Drive Mapping Not Working

## Problem

The H: drive was not appearing for HR users after login.

GPO was created and linked correctly.

---

## What I Checked

- Confirmed GPO link to OU=Users
- Verified user membership with `whoami /groups`
- Checked Security Filtering
- Ran `gpupdate`
- Checked `gpresult /r`

---

## Root Cause

Authenticated Users had been removed from Security Filtering.

This prevented proper GPO processing.

Drive mapping should not rely only on Security Filtering.

---

## Fix

- Re-added Authenticated Users
- Configured Item-Level Targeting
- Targeted security group: GG_HR
- Logged off / logged back in
- Verified H: drive appeared

---

## Note

For drive mapping:
- Use Preferences
- Use Item-Level Targeting
- Always verify with gpresult

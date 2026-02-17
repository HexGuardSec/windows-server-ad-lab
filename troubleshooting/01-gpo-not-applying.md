# 01 - GPO Not Applying

## Problem

A GPO was not applying on the client workstation.

The policy was linked to OU=Workstations but did not appear in gpresult.

---

## What I Checked

- Verified the computer was in the correct OU
- Confirmed the GPO was linked and enabled
- Ran `gpupdate`
- Used `gpresult /r`
- Checked DNS with `ipconfig /all`
- Confirmed DC connectivity (ping + SYSVOL access)

---

## Root Cause

The GPO contained **User Configuration settings** but was linked to an OU that only contained computer objects.

User settings apply based on the user's OU, not the computer's OU.

---

## Fix

- Re-linked the GPO to OU=Users
- Logged off / logged back in
- Verified with `gpresult /r`

---

## Note

Always check:
- User vs Computer Configuration
- OU placement
- gpresult output before changing anything

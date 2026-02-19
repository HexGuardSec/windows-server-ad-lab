# 03 - User Logged in With Temporary Profile

## Problem

User `hr.user` received the message:

"You have been logged on with a temporary profile."

The user had no access to personal settings or previous desktop files.

---

## Symptoms Observed

In C:\Users:

- hr.user.old
- TEMP

In Event Viewer (Application log):

- Event ID 1511
- Event ID 1515
- Event ID 1544

Source: User Profile Service

---

## Root Cause

The original profile folder was renamed.

Windows could not locate the expected profile path associated with the user's SID.

As a result, the User Profile Service failed to load the profile and created a temporary one.

---

## Diagnostic Steps

1. Verified user profile folders in C:\Users
2. Checked Event Viewer for User Profile Service errors
3. Confirmed ProfileImagePath in:
   HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList

---

## Resolution

1. Logged in as local/domain administrator
2. Deleted the TEMP profile folder
3. Renamed `hr.user.old` back to `hr.user`
4. Verified registry ProfileImagePath matched the correct folder
5. Logged back in with `hr.user`

Profile loaded successfully.

---

## Notes

Temporary profiles are commonly caused by:

- Folder rename or deletion
- SID conflict (.bak entries)
- Corrupted NTUSER.dat
- Permission issues

Always verify:
- C:\Users folder state
- Event Viewer logs
- ProfileList registry entries

Do not delete the original folder without backup.

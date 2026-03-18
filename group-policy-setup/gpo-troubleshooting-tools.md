# 🔍 GPO Troubleshooting Tools

## Overview

This section presents the main tools used to troubleshoot Group Policy issues in a Windows environment.

---

## gpresult /r

Command:

gpresult /r

Shows:

- Applied GPOs
- User and computer scope

---

## gpresult /h

Command:

gpresult /h report.html

Generates a detailed HTML report of all applied policies.

---

## rsop.msc

Command:

rsop.msc

Displays the Resultant Set of Policy (RSoP), showing the actual policies applied to the system.

---

## Screenshots

- screenshots/gpo-troubleshooting/01-gpresult-user.png
- screenshots/gpo-troubleshooting/02-gpresult-report.html.png
- screenshots/gpo-troubleshooting/03-rsop-result.png

---

## Key Takeaway

These tools are essential for diagnosing why a GPO is not applied or not working correctly in a domain environment.
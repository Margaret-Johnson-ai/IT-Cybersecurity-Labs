# 🗂️ Active Directory Lab – Rollout & Troubleshooting Notes

📅 **Project Duration:** May 27 – May 31, 2025  
🎯 **Goal:** Build a fully functional, department-based Active Directory structure with OU segregation, GPOs, service accounts, and login policy testing.

---

## 🧪 Initial Setup
- ✅ Installed Windows Server 2022 on WIN22-DC1 and promoted it to a domain controller.
- ✅ Domain Name: `mjvirtlab.home`
- ✅ Joined Windows 11 client machine (WIN11-ADMIN01) to the domain after correcting DNS trust issues.

---

## 🔄 Domain Join Debugging Recap
- 🐞 **Issue:** WIN11 machine couldn’t locate DC.
- 🔍 **Root Cause:** Incorrect DNS and IPv6 interference.
- 🧰 **Fixes Applied:**
  - Flushed DNS (`ipconfig /flushdns`)
  - Set static DNS pointing to DC
  - Verified trust via `nltest`, `nslookup`
  - Edited the hosts file for local resolution
  - Manually joined domain — confirmed with domain login

---

## 👤 User Creation & Group Assignment
- Created 4 users manually via ADUC.
- Verified each login and configured email fields.
- Assigned users to respective groups:
  - HR_Group → Sandra Wallace
  - Sales_Team → Amanda Sales
  - IT_Support → Tom Green
  - Service Account → svcBackup (no group assigned)

---

## 🛡️ GPO Rollout
- Linked custom GPOs to each department OU:
  - **HR OU:** Folder redirection to `\\WIN22-DC1\HRDocs`
  - **Sales OU:** Applied Control Panel restrictions + Folder Redirection to `SalesDocs`
  - **IT OU:** Granted access to Admin Tools + Folder redirection to `ITDocs`
  - **Root Policy:** Login Banner via GPO

---

## 📂 Drive Mapping Script
- Wrote and tested `MapDrives.ps1` script to dynamically map H: drive based on group membership.
- Script successfully applied at logon using user-based group detection.

---

## 🧰 Scripts Built:
- ✅ `MapDrives.ps1`
- ✅ `Create_Users.ps1` with CSV import support
- ✅ `Create_OUs.ps1` (optional)
- ✅ `Enable-Admin.cmd` for emergency override
- ✅ `GPO_Backup.ps1`
- ✅ `Logon_Script_Example.bat`

---

## 📸 Screenshots Captured: 41+
All evidence of configuration steps, policy enforcement, login verifications, and script deployment were saved in the `Screenshots` folder.

---

## 🧠 Key Lessons Learned:
- GPOs take effect best when filtered per OU rather than per user group.
- Folder redirection improves structure and centralizes user data for backup.
- Troubleshooting domain issues helps sharpen core DNS and trust configuration skills.
- PowerShell adds repeatability and clarity to the admin process—especially for user creation and GPO backups.

---

📝 **Next Steps:**
- Add AD group-based permissions to shared folders
- Create logon audit policies
- Document disaster recovery steps for DC backup

---
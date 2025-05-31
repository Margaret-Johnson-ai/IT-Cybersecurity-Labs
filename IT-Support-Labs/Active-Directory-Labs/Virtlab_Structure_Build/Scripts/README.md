# 🧩 Script Collection – Virtlab Active Directory Lab
*Author: Margaret Johnson*  
*Date: May 31, 2025*  

This folder contains a curated set of real-world PowerShell and batch scripts used in the **Virtlab_Structure_Build** Active Directory simulation project. Each script demonstrates practical automation and administrative techniques used by IT professionals in enterprise environments.

---

## 📜 Script Descriptions

### 1. `Create_OUs.ps1`
Creates the organizational unit structure: HR, IT, Sales, and Service_Accounts.  
Use this when automating initial domain layout.

### 2. `Create_Users.ps1`
Bulk-creates users from the `users.csv` file.  
Helpful for onboarding simulations or user provisioning labs.

### 3. `users.csv`
A sample CSV used for input into `Create_Users.ps1`.  
Includes: Name, Username, Password, OU, Group, Email.

### 4. `MapDrives.ps1`
Maps drive letters based on the group the logged-in user belongs to.  
Simulates login-time resource access for end users.

### 5. `Enable-Admin.cmd`
Emergency script to re-enable the disabled local Administrator account.  
Used during credential recovery or troubleshooting.

### 6. `GPO_Backup.ps1`
Backs up existing Group Policy Objects.  
Useful for creating recovery points before making changes.

### 7. `Logon_Script_Example.bat`
Legacy-style login script to simulate mapping a shared drive (H:) at logon.  
Included for demonstration of pre-GPO scripting methods.

---

## ✅ Real-World Benefits
These scripts simulate everyday administrative tasks:
- Automated OU and user provisioning
- Emergency recovery techniques
- Drive mapping and policy backups
- CSV-based user onboarding

Together, they show how I approach IT infrastructure with both hands-on action and automation in mind.

---

If you're a hiring manager or mentor reviewing this, I’d love your feedback!

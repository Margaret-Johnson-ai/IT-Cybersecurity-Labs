# 📁 Group Policy Objects (GPO) Configuration Summary

This folder contains detailed documentation of all GPOs created as part of the **Virtlab Structure Build** project inside my Windows Server Active Directory Lab. These GPOs were designed to simulate realistic enterprise IT configurations based on organizational departments.

Each `.md` file in this folder explains the purpose, configuration steps, and includes visual verification screenshots for transparency and real-world alignment.

---

## 🔧 Configured GPOs

### 1. **HR_Redirect_Docs_GPO.md**
Redirects all HR department users’ **Documents folder** to a central file share (`\\WIN22-DC1\HRDocs`).  
🟢 Reflects best practices for centralized backup and document management.

### 2. **Sales_Limit_Settings_GPO.md**
Applies restrictive policies for Sales department users, such as:  
- Control Panel restrictions  
- Disabled Command Prompt  
- Prevented registry access  
🟢 Simulates compliance-focused or limited-access workstation scenarios.

### 3. **IT_Admin_Tools_GPO.md**
Grants IT users access to tools like PowerShell, Server Manager, and administrative templates.  
🟢 Represents trust-based, elevated workstation setups for support teams.

---

## 🎯 Why This Matters

These GPOs demonstrate my hands-on ability to:
- Create and apply **OU-specific policies**
- Simulate **role-based access control**
- Use Group Policy Management Console (GPMC) to **link, test, and verify** settings
- Communicate configuration details using clear documentation and screenshots

This folder is a snapshot of real-world administrative tasks I’d be expected to perform in an entry-level IT or SysAdmin role.

---

💡 **All configurations were tested and verified within a live virtual environment using Windows Server 2022 and Windows 11 clients.**


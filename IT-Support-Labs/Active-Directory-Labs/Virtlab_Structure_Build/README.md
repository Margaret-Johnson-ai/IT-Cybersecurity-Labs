=============================================================
Active Directory Lab Project – Phase 1 Documentation
By Margaret Johnson | Date: May 31, 2025
=============================================================

🧩 Project Overview:
---------------------
This hands-on lab simulates a realistic business environment where I built and configured an Active Directory (AD) domain from scratch using Windows Server 2022 and a Windows 11 client. The goal was to reinforce my understanding of user management, organizational units (OUs), group policy management (GPO), folder redirection, and troubleshooting domain connectivity issues—all from an IT Support and Systems Administrator perspective.

This project is part of my larger GitHub portfolio to showcase job-ready skills to recruiters and hiring managers as I transition into IT Support and Cybersecurity.

🖥️ Lab Environment Setup:
--------------------------
• Windows Server 2022 (WIN22-DC1) – Domain Controller
• Windows 11 Client (WIN11-ADMIN01)
• Virtual Network configured via VMware Workstation
• Static IP Configuration + DNS Setup
• Domain: MJVirtLab.home

⚙️ Domain Configuration:
--------------------------
• Installed Active Directory Domain Services (AD DS) on WIN22-DC1
• Promoted server to Domain Controller
• Verified DNS settings and domain functionality
• Joined WIN11-ADMIN01 to the MJVirtLab.home domain
• Troubleshot domain join issues using:
  - `ipconfig /flushdns`, `ipconfig /registerdns`
  - `nltest`, `nslookup`, hosts file edits

👤 User & OU Setup:
---------------------
Created users and placed them in custom Organizational Units:

-----------------------------------------------------
Name: Sandra Wallace
Username: swallace
Password: Set per policy (complex, 8+ characters with uppercase, lowercase, numbers, and symbols)
OU: HR > Users
Groups: HR_Group
Email: swallace@mjvirtlab.home
-----------------------------------------------------
Name: Tom Green
Username: tgreen
Password: Set per policy (complex, 8+ characters with uppercase, lowercase, numbers, and symbols)
OU: IT > Users
Groups: IT_Support
Email: tgreen@mjvirtlab.home
-----------------------------------------------------
Name: Amanda Sales
Username: asales
Password: Set per policy (complex, 8+ characters with uppercase, lowercase, numbers, and symbols)
OU: Sales > Users
Groups: Sales_Team
Email: asales@mjvirtlab.home
-----------------------------------------------------
Name: svcBackup
Username: svcBackup
Password: Set per policy (complex, 8+ characters with uppercase, lowercase, numbers, and symbols)
OU: Service_Accounts
Groups: None
Email: svcBackup@mjvirtlab.home
-----------------------------------------------------

🛡️ Group Policy Management:
-----------------------------
• Created and linked the following GPOs:
  - HR_Redirect_Docs
  - IT_Admin_Tools
  - Sales_Limit_Settings

• Configured Folder Redirection via GPO:
  - Mapped shared folders: HRDocs, ITDocs, SalesDocs
  - Verified creation and access permissions
  - Linked GPOs to the appropriate OUs

📂 Shared Folder Paths:
-------------------------
• \WIN22-DC1\HRDocs
• \WIN22-DC1\ITDocs
• \WIN22-DC1\SalesDocs

🧠 Lessons Learned:
---------------------
• Real-world skills go beyond textbook setups — I ran into several domain join issues and turned that into a separate project: [Domain Join Debugging Lab].
• GPOs must be tested thoroughly — I learned how to verify settings from both the server and client sides.
• Every action taken was logged with screenshots and documented to reinforce best practices in IT operations.

✅ Next Steps:
----------------
• Verify folder redirection for IT and Sales OUs
• Set up logon scripts for automation
• Begin backup and restore simulation using Veeam
• Finalize and publish the AD project README with visuals

📁 Project Path:
-----------------
GitHub Repository: [IT-Support-Labs > AD_Configuration_Lab]
Screenshots: ./Screenshots/
Documentation: ./AD_Project_Documentation/


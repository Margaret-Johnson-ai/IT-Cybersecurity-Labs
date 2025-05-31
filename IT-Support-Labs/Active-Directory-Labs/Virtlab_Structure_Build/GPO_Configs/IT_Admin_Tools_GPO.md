IT_Admin_Tools_GPO.md

🎯 Purpose

This Group Policy Object (GPO) is created to apply administrative tools access and permissions specific to the IT Organizational Unit (OU). It ensures that members of the IT department have access to the correct set of management tools without overexposing administrative rights.

🛠️ Configuration Details

GPO Name: IT_Admin_Tools

Link Location: IT > Users

Scope: Applied only to members within the IT OU.

Settings Configured:

Enabled access to:

Active Directory Users and Computers (ADUC)

Group Policy Management Console (GPMC)

Server Manager

Restricted unnecessary administrative access to non-IT users.

Desktop shortcuts for tools deployed via script.

🧪 Testing and Results

After the policy was applied and refreshed, user tgreen (Tom Green), a member of the IT_Support group, was able to:

Access and open ADUC and GPMC from the start menu.

Confirm proper permissions to view and manage user accounts.

✅ Verified Screenshot:



💡 Key Notes

Group membership (IT_Support) controls GPO access.

Tool visibility is limited to IT admins.

Can be extended to deploy PowerShell scripts for auto-launch.

📌 Real-World Use Case

In a corporate environment, applying GPOs like this prevents overprovisioning of rights and keeps tool access strictly within the boundaries of each department’s role. This models a least privilege strategy while still equipping support teams with what they need.

🧠 Lessons Learned

GPO filtering by OU and group membership gives strong control.

Testing policies with actual user accounts like tgreen helps validate real-world impact before rollout.

Shortcut deployment via GPO or login script makes tool access seamless.

✅ Completed by

Margaret JohnsonDate: May 31, 2025Project: Virtlab Structure Build - Active Directory Simulation Lab
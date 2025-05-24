# Ticket: O365_MFA_Lockout_TBrooks.md

**Date Opened:** May 23, 2025  
**User:** Taylor Brooks  
**Department:** IT  
**Issue:** Cannot log in to Office 365 – not receiving MFA codes.  

**Troubleshooting:**
- Verified username and password
- Confirmed user recently reset their phone
- MFA prompt triggered but user was not enrolled in Authenticator again

**Resolution:**
- Logged into Microsoft 365 Admin Center (simulated)
- Removed existing MFA device from user profile
- Sent instructions to re-enroll device and enable Authenticator again

**User Notification:**
Hi Taylor,

We’ve reset your MFA configuration for Office 365. Please follow these steps to re-enroll your phone:

1. Sign into https://aka.ms/mfasetup  
2. Select “Add Method” and follow the prompts  
3. Use the Microsoft Authenticator app

Let me know if you have any issues setting it up.

Best,  
Margaret Johnson  
Helpdesk Analyst

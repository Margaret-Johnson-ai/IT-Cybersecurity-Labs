# 🧩 Task 1: Active Directory User Provisioning

**Scenario:**  
The onboarding team submitted a ticket requesting the creation of a new user for the Sales department with specific group memberships and folder access.

---

## 🔧 Steps Taken

1. Launched Windows Server 2022 with AD DS role.
2. Opened **Active Directory Users and Computers**.
3. Created Organizational Unit: `Sales`.
4. Created new user: `jdoe`
   - Full name: John Doe
   - Username: jdoe
   - Password: (ConvertTo-SecureString "<REDACTED>" -AsPlainText -Force)
5. Added `jdoe` to the following groups:
   - `SalesGroup`
   - `Domain Users`
6. Configured home folder access permissions.

---

## 📸 Screenshots

📂 Saved in `Screenshots/ActiveDirectory/`  
📝 Filename format: `01_AD_Create_User.png`, `02_AD_Add_To_Group.png`, etc.

---

## ✅ Outcome

✅ User successfully created and added to the required security groups.  
✅ Onboarding ticket marked **Resolved** in simulated tracker.

---

## 🔍 Reflection

I learned how to:
- Navigate ADUC and configure users with organizational context.
- Apply group policies using security groups.
- Document user provisioning for audit readiness.

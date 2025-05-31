# GPO Configuration: HR_Redirect_Docs

## 🎯 Objective
Redirect the "Documents" folder for all HR users to a centralized and secure shared network location:  
`\\WIN22-DC1\HRDocs`

This policy ensures that files are stored on the domain controller, backed up, and accessible across sessions or machines.

---

## 🛠️ GPO Details

- **GPO Name:** `HR_Redirect_Docs`
- **Linked To:** `HR` Organizational Unit
- **Policy Path:**  
  `User Configuration > Policies > Windows Settings > Folder Redirection > Documents`

---

## 🔧 Configuration Settings

| Setting                        | Value                                     |
|-------------------------------|-------------------------------------------|
| Target Folder Location        | Basic – Redirect everyone’s folder to the same location |
| Root Path                     | `\\WIN22-DC1\HRDocs`                      |
| Grant User Exclusive Rights   | **Unchecked** (to allow shared access)    |
| Move Contents to New Location | **Checked**                               |
| Policy Removal Behavior       | Redirect the folder back to the local userprofile location |

---

## 📸 Verification

Redirection tested by logging in as `swallace` (HR user) on `WIN11-ADMIN01`.  
Confirmed that the **Documents folder was redirected** to `\\WIN22-DC1\HRDocs` instead of the default `C:\Users\<username>\Documents`.

🖼️ Screenshot saved as: `39_HRDocs_Share_Verified.png`

---

## ✅ Result

This GPO ensures centralized document storage for HR personnel, streamlines backup, and supports real-world IT policies for data availability and control.

---

## 📌 Notes

- Confirmed the share folder `HRDocs` was created at `C:\Shares\HRDocs` and shared with appropriate permissions.
- Future redirection for IT and Sales will follow the same configuration pattern with different share paths.

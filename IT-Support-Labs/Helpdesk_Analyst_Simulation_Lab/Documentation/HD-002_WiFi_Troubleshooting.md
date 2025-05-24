# 🧾 Helpdesk Ticket: Wi-Fi Connectivity Issue

**Ticket ID**: HD-002  
**Date**: [05/23/2025]  
**Reported By**: John Doe  
**Location**: Office - Floor 2  
**Device**: Dell Latitude 5410  
**OS**: Windows 10 Pro

---

## 🔧 Problem Description

User reports being unable to connect to the Wi-Fi network named "OfficeSecureNet". Other users in the area are connected without issues. User attempted to restart the laptop, but problem persists.

---

## 🧪 Troubleshooting Steps

1. Checked Wi-Fi icon – status shows "No Internet, Secured"
2. Ran `ipconfig /release` and `ipconfig /renew` – no change
3. Flushed DNS: `ipconfig /flushdns`
4. Verified network adapter is enabled in Device Manager
5. Ran Windows Network Troubleshooter – suggested resetting adapter
6. Manually disconnected and reconnected to "OfficeSecureNet"
7. Verified static IP was not assigned – using DHCP
8. Ping test:
   - `ping 8.8.8.8` – request timed out
   - `ping google.com` – failed

---

## ✅ Resolution

- Reset the wireless adapter using `netsh winsock reset`
- Rebooted device
- Verified connection: Wi-Fi reconnected and user accessed intranet & external sites

---

## 📬 Communication

Explained steps taken to the user in simple terms. Confirmed issue was resolved and advised user to notify Helpdesk if issue recurs.

---

**Ticket Status**: ✅ Resolved  
**Resolution Time**: ~25 minutes

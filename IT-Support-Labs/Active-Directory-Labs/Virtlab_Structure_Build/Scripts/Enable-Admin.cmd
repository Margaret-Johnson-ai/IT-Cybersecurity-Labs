@echo off
REM Enable built-in Administrator account and set a new password

net user Administrator /active:yes
net user Administrator Welcome@123

echo ✅ Administrator account enabled and password set.
pause
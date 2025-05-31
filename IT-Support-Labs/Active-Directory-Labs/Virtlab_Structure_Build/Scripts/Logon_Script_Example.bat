@echo off
REM Example Logon Script - Drive Mapping Based on Group Membership

REM Check if user is in HR Group and map drive
net group HR_Group | find /I "%username%" >nul
if %errorlevel%==0 (
    net use H: \\WIN22-DC1\HRDocs
)

REM Check if user is in IT Support Group and map drive
net group IT_Support | find /I "%username%" >nul
if %errorlevel%==0 (
    net use H: \\WIN22-DC1\ITDocs
)

REM Check if user is in Sales Team Group and map drive
net group Sales_Team | find /I "%username%" >nul
if %errorlevel%==0 (
    net use H: \\WIN22-DC1\SalesDocs
)

echo Logon script executed.
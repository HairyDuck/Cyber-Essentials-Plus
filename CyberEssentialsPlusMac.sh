#!/bin/bash

echo "Cyber Essentials Plus Compliance Script for macOS"
echo "-----------------------------------------------"

echo "This script will configure your macOS computer to be compliant with Cyber Essentials Plus standards."
echo "Please review each step and ensure it aligns with your organization's requirements before proceeding."
echo
read -p "Press enter to continue..."

echo "Step 1: Enabling FileVault (Full Disk Encryption)"
sudo fdesetup enable
echo

echo "Step 2: Enabling Firewall"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
echo

echo "Step 3: Disabling Remote Login (SSH)"
sudo systemsetup -f -setremotelogin off
echo

echo "Step 4: Enabling Gatekeeper"
sudo spctl --master-enable
echo

echo "Step 5: Disabling Automatic Login"
sudo defaults delete /Library/Preferences/com.apple.loginwindow autoLoginUser
echo

echo "Step 6: Enabling Automatic App Updates"
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true
echo

echo "Step 7: Configuring Strong Password Policy"
sudo pwpolicy -setglobalpolicy "minChars=8"
echo

echo "Step 8: Enabling Firewall Logging"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setloggingmode on
echo

echo "Step 9: Disabling Bluetooth Sharing"
sudo defaults write /Library/Preferences/com.apple.Bluetooth PrefKeyServicesEnabled -bool false
echo

echo "Step 10: Disabling Wi-Fi Sharing"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.airport.preferences ShareMode -bool false
echo

echo "Step 11: Disabling Screen Sharing"
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.screensharing.plist
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.screensharing.agent.plist
echo

echo "Step 12: Enabling File Sharing"
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.smbd.plist
echo

echo "Step 13: Disabling Guest Account"
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
echo

echo "Step 14: Enabling Firmware Password"
sudo firmwarepasswd -setpasswd
echo

echo "Step 15: Enabling Automatic Software Updates"
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled -bool true
echo

echo "Step 16: Enabling Automatic Security Updates"
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist ConfigDataInstall -bool true
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist CriticalUpdateInstall -bool true
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool true
echo

echo "Step 17: Enabling Gatekeeper for App Downloads"
sudo spctl --master-enable
sudo spctl --enable --label "Mac App Store"
sudo spctl --enable --label "Developer ID"
echo

echo "Step 18: Disabling Automatic Time Zone Adjustment"
sudo defaults write /Library/Preferences/com.apple.timezone.auto.plist Active -bool false
echo

echo "Step 19: Enabling Secure Keyboard Entry"
defaults write -g ApplePressAndHoldEnabled -bool false
echo

echo "Step 20: Enabling FileVault Pre-boot Authentication"
sudo fdesetup authrestart
echo

echo
echo "Configuration completed successfully."
read -p "Press enter to exit..."

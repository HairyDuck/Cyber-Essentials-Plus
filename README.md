# Cyber Essentials Plus Compliance Script

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

This repository contains scripts to configure Windows 10, Windows 11, and macOS computers to be compliant with Cyber Essentials Plus standards. These scripts automate the process of implementing various security configurations and best practices to enhance the security posture of the systems.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Additional Resources](#additional-resources)

## Introduction

These scripts provide a convenient way to configure Windows 10, Windows 11, and macOS computers to be compliant with the Cyber Essentials Plus standards. They automate a series of recommended configurations to enhance the security posture of the systems and align them with the requirements of Cyber Essentials Plus.

The scripts apply various security settings, such as disabling automatic updates, enabling firewalls, disabling unnecessary services and protocols, configuring password complexity, enabling encryption, and more. Each step includes an explanation and confirmation prompt to ensure that the changes align with your specific requirements.

Please note that these scripts are intended as starting points and may need modification to meet your organization's specific needs. Review and test the configurations in a controlled environment before deploying them to production systems.

Author: [HairyDuck](https://github.com/HairyDuck/)

## Features

### Windows 10 Script

- Disables automatic updates
- Enables Windows Firewall
- Disables Remote Desktop Protocol (RDP)
- Enables User Account Control (UAC)
- Disables Autorun/Autoplay for removable devices
- Enables BitLocker drive encryption (optional, if supported by hardware)
- Configures password complexity
- Disables unused services
- Configures auditing
- Disables SMBv1 protocol
- Disables unnecessary network protocols
- Enables Windows Defender Antivirus
- Enables Windows Defender SmartScreen
- Enables Windows Firewall logging
- Disables unused and insecure protocols
- Configures strong cipher suites
- Disables unnecessary browser plugins
- Disables Autorun for removable devices
- Enables full disk encryption (BitLocker) if supported by hardware
- Configures Windows Event Logging
- Configures account lockout policy
- Enables strong password policy
- Enables Windows Defender Firewall domain profile
- Disables NetBIOS over TCP/IP
- Enables Microsoft Enhanced Mitigation Experience Toolkit (EMET) features (if installed)
- Configures Windows Update
- Enables AppLocker (configure as per your organization's requirements)
- Disables guest accounts
- Enables screensaver password protection
- Enforces SMB signing
- Adds an administrator account (AdminAccount) [CHANGE CREDENTIALS]

### Windows 11 Script

- Disables automatic updates
- Enables Windows Firewall
- Disables Remote Desktop Protocol (RDP)
- Enables User Account Control (UAC)
- Disables Autorun/Autoplay for removable devices
- Enables BitLocker drive encryption (optional, if supported by hardware)
- Configures password complexity
- Disables unused services
- Configures auditing
- Disables SMBv1 protocol
- Disables unnecessary network protocols
- Enables Windows Defender Antivirus
- Enables Windows Defender SmartScreen
- Enables Windows Firewall logging
- Disables unused and insecure protocols
- Configures strong cipher suites
- Disables unnecessary browser plugins
- Disables Autorun for removable devices
- Enables full disk encryption (BitLocker) if supported by hardware
- Configures Windows Event Logging
- Configures account lockout policy
- Enables strong password policy
- Enables Windows Defender Firewall domain profile
- Disables NetBIOS over TCP/IP
- Enables Microsoft Enhanced

 Mitigation Experience Toolkit (EMET) features (if installed)
- Configures Windows Update
- Enables AppLocker (configure as per your organization's requirements)
- Disables guest accounts
- Enables screensaver password protection
- Enforces SMB signing
- Adds an administrator account (AdminAccount) [CHANGE CREDENTIALS]

### macOS Script

- Enables FileVault (Full Disk Encryption)
- Enables Firewall
- Disables Remote Login (SSH)
- Enables Gatekeeper
- Disables Automatic Login
- Enables Automatic App Updates
- Configures Strong Password Policy
- Enables Firewall Logging
- Disables Bluetooth Sharing
- Disables Wi-Fi Sharing
- Disables Screen Sharing
- Enables File Sharing
- Disables Guest Account
- Enables Firmware Password
- Enables Automatic Software Updates
- Enables Automatic Security Updates
- Enables Gatekeeper for App Downloads
- Disables Automatic Time Zone Adjustment
- Enables Secure Keyboard Entry
- Enables FileVault Pre-boot Authentication

Please note that it is highly recommended to review and modify the scripts according to your organization's specific requirements before running them on production systems.

## Usage

1. **Review the Scripts**: It's crucial to review the scripts and understand the configurations before executing them. Open the script files in a text editor and familiarize yourself with each step and its purpose.

2. **Run as Administrator**: For Windows scripts, ensure that you run them with administrative privileges. Right-click on the script file and select "Run as administrator" from the context menu.

3. **Confirmation Prompts**: As the scripts progress, they will display explanations of each step and prompt for confirmation before applying the configurations. Take the time to review each step and ensure it aligns with your organization's requirements.

4. **Modify as Needed**: The scripts provide general configurations, but you may need to modify certain settings to fit your organization's specific needs. Adjust the scripts accordingly, ensuring the changes align with your security policies and compliance requirements.

5. **Test in a Controlled Environment**: Before applying the scripts to production systems, it's highly recommended to test the configurations in a controlled environment. This allows you to evaluate their impact and ensure compatibility with your existing infrastructure.

**IMPORTANT**: Change the credentials for the administrator account (AdminAccount) in the Windows scripts by modifying the scripts before running them.

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request. Together, we can make these scripts even better.

Please ensure your contributions align with the scripts' goals of enhancing Cyber Essentials Plus compliance and improving the security posture of Windows 10, Windows 11, and macOS computers.

Please read the [Contribution Guidelines](CONTRIBUTING.md) for more information on how to contribute to this project.

## License

These scripts are licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute them in accordance with the terms of the license.

## Credits

These scripts are authored and maintained by [HairyDuck](https://github.com/HairyDuck/).

# Disclaimer

**Please note that the Cyber Essentials Plus Compliance Scripts provided in this repository are intended as starting points and convenience tools for implementing recommended security configurations. However, it is your responsibility to review and modify the scripts to meet the specific requirements and security policies of your organization.**

While efforts have been made to ensure the accuracy and effectiveness of the scripts, it is always recommended to test the configurations in a controlled environment before deploying them to production systems. The authors and contributors of these scripts are not liable for any damages or consequences arising from the use or misuse of the scripts.

Before applying the scripts or making any changes to your systems, it is highly recommended to consult with qualified cybersecurity professionals or

 IT experts who can assess the suitability of the configurations for your specific environment.

Use the Cyber Essentials Plus Compliance Scripts at your own risk, and remember that security is an ongoing process that requires regular monitoring, updates, and adherence to best practices.

By using the scripts, you acknowledge and accept the terms of this disclaimer.

## Additional Resources

- [Cyber Essentials Plus Overview](cyber-essentials-plus-overview.md): An overview of the Cyber Essentials Plus standards and their requirements.
- [Cyber Essentials Plus Implementation Guide for Windows 11](cyber-essentials-plus-implementation-guide-windows11.md): A comprehensive guide for implementing Cyber Essentials Plus compliance on Windows 11 computers.
- [Cyber Essentials Plus Implementation Guide for Windows 10](cyber-essentials-plus-implementation-guide-windows10.md): A comprehensive guide for implementing Cyber Essentials Plus compliance on Windows 10 computers.
- [Cyber Essentials Plus Implementation Guide for macOS](cyber-essentials-plus-implementation-guide-macos.md): A comprehensive guide for implementing Cyber Essentials Plus compliance on macOS computers.

---

Thank you for using the Cyber Essentials Plus Compliance Scripts! We hope they help you in achieving and maintaining a secure and compliant environment for Windows 10, Windows 11, and macOS. If you have any questions or encounter any issues, please don't hesitate to reach out. Happy securing!
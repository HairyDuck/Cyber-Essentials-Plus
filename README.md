# Cyber Essentials Plus Compliance Script

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

This repository contains a script to configure a Windows 11 computer to be compliant with Cyber Essentials Plus standards. The script automates the process of implementing various security configurations and best practices to enhance the security posture of the system.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Additional Resources](#additional-resources)

## Introduction

This script provides a convenient way to configure a Windows 11 computer to be compliant with the Cyber Essentials Plus standards. It automates a series of recommended configurations to enhance the security posture of the system and align it with the requirements of Cyber Essentials Plus.

The script applies various security settings, such as disabling automatic updates, enabling Windows Firewall, disabling unnecessary services and protocols, configuring password complexity, enabling encryption, and more. Each step includes an explanation and confirmation prompt to ensure that the changes align with your specific requirements.

Please note that this script is intended as a starting point and may need modification to meet your organization's specific needs. Review and test the configurations in a controlled environment before deploying them to production systems.

Author: [HairyDuck](https://github.com/HairyDuck/)

## Features

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

Please note that it is highly recommended to review and modify the script according to your organization's specific requirements before running it on production systems.

## Usage

1. **Review the Script**: It's crucial to review the script and understand the configurations before executing it. Open the script file in a text editor and familiarize yourself with each step and its purpose.

2. **Run as Administrator**: To ensure the changes take effect properly, execute the script with administrative privileges. Right-click on the script file and select "Run as administrator" from the context menu.

3. **Confirmation Prompts**: As the script progresses, it will display explanations of each step and prompt for confirmation before applying the configurations. Take the time to review each step and ensure it aligns with your organization's requirements.

4. **Modify as Needed**: The script provides general configurations, but you may need to modify certain settings to fit your organization's specific needs. Adjust the script accordingly, ensuring the changes align with your security policies and compliance requirements.

5. **Test in a Controlled Environment**: Before applying the script

 to production systems, it's highly recommended to test the configurations in a controlled environment. This allows you to evaluate their impact and ensure compatibility with your existing infrastructure.

**IMPORTANT**: Change the credentials for the administrator account (AdminAccount) by modifying the script before running it.

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request. Together, we can make this script even better.

Please ensure your contributions align with the script's goals of enhancing Cyber Essentials Plus compliance and improving the security posture of Windows 11 computers.

Please read the [Contribution Guidelines](CONTRIBUTING.md) for more information on how to contribute to this project.

## License

This script is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it in accordance with the terms of the license.

## Credits

This script is authored and maintained by [HairyDuck](https://github.com/HairyDuck/).

## Additional Resources

- [Cyber Essentials Plus Overview](cyber-essentials-plus-overview.md): An overview of the Cyber Essentials Plus standards and their requirements.
- [Cyber Essentials Plus Implementation Guide](cyber-essentials-plus-implementation-guide.md): A comprehensive guide for implementing Cyber Essentials Plus compliance on Windows 11 computers.

---

Thank you for using the Cyber Essentials Plus Compliance Script! We hope it helps you in achieving and maintaining a secure and compliant Windows 11 environment. If you have any questions or encounter any issues, please don't hesitate to reach out. Happy securing!
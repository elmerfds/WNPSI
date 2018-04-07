# WNPSI [Windows Nginx PHP Stack Installer]
Automated install script to install Nginx and PHP on your Windows machine.

![menu](https://i.imgur.com/Ivnmk52.png)

### How do I run it?
1. Clone/Download the repo and extract the zip file.
2. Open the extracted 'WNPSI-master' folder and right-click on 'installer.bat' and click on 'Run as administrator'
3. Installer will ask you for the nginx install location, type in the full path as per the e.g. c:\nginx
4. The installer will ask you to provide the password of the current user during installation, the nginx service requires that you run it under a user account instead of the 'Local System' account, if you don't then you won't be able to save and reload your nginx config.

### How does it run the NGINX and PHP service?
- NSSM

### Tested on?
- Windows 10 Pro (Fall creators update)
- Windows Server 2012 R2

### OS Architecture
- Currently x64 bit OS only.
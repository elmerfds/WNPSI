@ECHO off
SET wnpsu_v=v1.0.0
TITLE Windows Nginx PHP Stack Unistaller %wnpsu_v%
COLOR 03
ECHO      ___           ___           ___         ___           ___     
ECHO     /\  \         /\  \         /\  \       /\__\         /\  \    
ECHO    _\:\  \        \:\  \       /::\  \     /:/ _/_        \:\  \   
ECHO   /\ \:\  \        \:\  \     /:/\:\__\   /:/ /\  \        \:\  \  
ECHO  _\:\ \:\  \   _____\:\  \   /:/ /:/  /  /:/ /::\  \   ___  \:\  \ 
ECHO /\ \:\ \:\__\ /::::::::\__\ /:/_/:/  /  /:/_/:/\:\__\ /\  \  \:\__\
ECHO \:\ \:\/:/  / \:\~~\~~\/__/ \:\/:/  /   \:\/:/ /:/  / \:\  \ /:/  /
ECHO  \:\ \::/  /   \:\  \        \::/__/     \::/ /:/  /   \:\  /:/  / 
ECHO   \:\/:/  /     \:\  \        \:\  \      \/_/:/  /     \:\/:/  /  
ECHO    \::/  /       \:\__\        \:\__\       /:/  /       \::/  /   
ECHO     \/__/         \/__/         \/__/       \/__/         \/__/      ~~ %wnpsu_v%
ECHO.
pause
CD %~dp0

ECHO.
ECHO Deleting any downloaded tools not cleared from the previous install
DEL /s /q vc_redist.x64.exe >nul 2>&1
DEL /s /q *.zip >nul 2>&1
RMDIR /s /q php >nul 2>&1
RMDIR /s /q nginx >nul 2>&1
RMDIR /s /q nginx-1.12.2 >nul 2>&1
RMDIR /s /q nssm-2.24-101-g897c7ad >nul 2>&1
RMDIR /s /q nssm >nul 2>&1
ECHO.Done!
ECHO.

ECHO.
ECHO 1. Stopping Nginx service
nssm stop nginx
ECHO.Done!
ECHO.

ECHO 2. Stopping PHP service
nssm stop php
ECHO.
ECHO.Done!

ECHO 3. Removing Nginx service
nssm remove nginx confirm
ECHO.Done!
ECHO.

ECHO 4. Removing PHP service
nssm remove php confirm
ECHO.Done!
ECHO.

ECHO 5. Deleting Nginx folder
RMDIR /s /q c:\nginx >nul 2>&1
ECHO.Done!
ECHO.

rem DEL /s /q c:\Windows\System32\nssm.exe >nul 2>&1

pause
@echo off
for /f "tokens=3" %%A in ('reg query "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper"') do set REG_RESULT=%%A
magick %REG_RESULT% -brightness-contrast -50 C:\Users\Public\Pictures\darkwallpp.jpg
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /t REG_SZ /d C:\Users\Public\Pictures\darkwallpp.jpg /f
timeout /t 5 >nul
RUNDLL32.EXE user32.dll ,UpdatePerUserSystemParameters
timeout /t 1 /nobreak >nul
RUNDLL32.EXE user32.dll ,UpdatePerUserSystemParameters
timeout /t 1 /nobreak >nul
RUNDLL32.EXE user32.dll ,UpdatePerUserSystemParameters
timeout /t 1 /nobreak >nul
RUNDLL32.EXE user32.dll ,UpdatePerUserSystemParameters
timeout /t 1 /nobreak >nul
RUNDLL32.EXE user32.dll ,UpdatePerUserSystemParameters

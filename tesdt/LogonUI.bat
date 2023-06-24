:: Compile as LogonUI.exe and replace in Sys32 (also rename the original to LogonUI_o.exe)
@echo off
find "0" C:\ps1_state.txt && (
goto :yay
) || (
goto :end
)
:yay
:: Timeout specific to my multi-monitor configuration, you may or may not need it
timeout /t 3
echo 1 > C:\ps1_state.txt
C:\Users\...\tesdt.exe
:end
LogonUI_o.exe %*

:: Fix Visual Glitch
taskkill /IM LockApp.exe /F

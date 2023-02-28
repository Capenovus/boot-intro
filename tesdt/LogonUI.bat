Rem AutoExecute on Boot
@echo off
find "0" C:\ps1_state.txt && (
goto :yay
) || (
goto :end
)
:yay
timeout /t 3
echo 1 > C:\ps1_state.txt
C:\Users\...\source\repos\tesdt\tesdt\bin\x86\Debug\tesdt.exe
:end
LogonUI_o.exe %*
taskkill /IM LockApp.exe /F

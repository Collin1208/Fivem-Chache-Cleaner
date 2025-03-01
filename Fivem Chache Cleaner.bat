@echo off
color 5 
echo Do you want to continue? Press Enter to continue
pause >nul  :: Wait for user to press Enter


tasklist | findstr /i "fivem GTAProcess.exe" >nul
if %errorlevel% equ 0 (
    echo Fivem is running right now please close Fivem and press Enter...
    pause

)


rmdir /s /q "%USERPROFILE%\AppData\Local\FiveM\FiveM.app\data"

if exist "%USERPROFILE%\Desktop\Test" (
    echo Failed to delete the folder.
) else (
    echo Successfully Cleand Fivem Chache.
)

pause 

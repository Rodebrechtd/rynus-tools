@echo off

:: Set variables
set "USER_NAME=YOUR_USERNAME"  :: Replace with the actual username
set "RYNUS_PATH=C:\Users\%USER_NAME%\AppData\Roaming\RYNUS\RYNUS Worker\RYNUS Worker client.exe"
set "RESTART_INTERVAL=10800"  :: Time in seconds (3 hours = 10800 seconds)

:loop
echo Checking if RYNUS Worker client exists at %RYNUS_PATH%...

if exist "%RYNUS_PATH%" (
    echo Path exists. Proceeding with restart.
    
    taskkill /f /im "RYNUS Worker client.exe" >nul 2>&1
    timeout /t 5 >nul
    start "" "%RYNUS_PATH%"
    
    echo Waiting for %RESTART_INTERVAL% seconds before the next restart...
    timeout /t %RESTART_INTERVAL% >nul
) else (
    echo Error: RYNUS Worker client not found at %RYNUS_PATH%.
    echo Please check the path and ensure the application exists.
    
    :: Optional: Wait for a shorter time before retrying if the file is missing
    timeout /t 60 >nul
)

goto loop

@echo off
cd /d "%~dp0"
where npm >nul 2>nul
if errorlevel 1 (
    echo Install Node.js with npm, then run this file again.
    pause
    exit /b 1
)
if not exist "node_modules\.bin\vite.cmd" (
    call npm install
    if errorlevel 1 (
        pause
        exit /b 1
    )
)
call npm run dev -- --host 127.0.0.1 --open
pause

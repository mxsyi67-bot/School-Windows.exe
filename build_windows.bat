@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Installing build dependencies...
call npm install
if errorlevel 1 goto error
echo Building Windows installer and portable EXE...
call npm run dist
if errorlevel 1 goto error
echo Done. See the dist folder.
pause
exit /b 0
:error
echo Build failed. Install Node.js LTS and retry.
pause
exit /b 1

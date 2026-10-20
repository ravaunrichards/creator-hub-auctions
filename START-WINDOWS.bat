@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (echo Node.js 22.5 or newer is required. & pause & exit /b 1)
node --version
node server.js
pause

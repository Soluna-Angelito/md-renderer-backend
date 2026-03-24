@echo off
title MD Renderer Server
cd /d "%~dp0"

where node >nul 2>nul
if %errorlevel% neq 0 (
    echo Node.js is not installed or not in PATH.
    pause
    exit /b 1
)

if not exist node_modules (
    echo Installing dependencies...
    npm install
    echo.
)

echo Starting MD Renderer at http://localhost:8766
echo Press Ctrl+C to stop.
echo.
rem start "" http://localhost:8766
node server.js
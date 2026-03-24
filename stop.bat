@echo off
echo Stopping MD Renderer server on port 8766...

for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8766 ^| findstr LISTENING') do (
    echo Killing process %%a
    taskkill /f /pid %%a >nul 2>nul
)

echo Done.
timeout /t 2 >nul

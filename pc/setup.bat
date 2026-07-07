@echo off
title Roblox MCP - Setup
color 0A

:: Minta admin (biar bisa install Node.js)
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell start -verb runas "%~dpnx0"
    exit /b
)

echo ============================================
echo    ROBLOX MCP VIA MOBILE - PC SETUP
echo ============================================
echo.

:: [1] Install Node.js kalo belum ada
echo [1/3] Memeriksa Node.js...
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo Node.js belum terinstall. Menginstall...
    winget install OpenJS.NodeJS.LTS -h --accept-source-agreements >nul 2>&1
    if %errorlevel% neq 0 (
        echo Gagal via winget, download langsung...
        curl -sL https://nodejs.org/dist/v22.14.0/node-v22.14.0-x64.msi -o node-installer.msi
        msiexec /i node-installer.msi /quiet /norestart
        del node-installer.msi
    )
)
echo [OK]
echo.

:: [2] Cek MCP bawaan Roblox
echo [2/3] Memeriksa MCP Roblox Studio...
if not exist "%LOCALAPPDATA%\Roblox\mcp.bat" (
    echo [ERROR] mcp.bat tidak ditemukan!
    echo Pastikan Roblox Studio sudah terinstall dan versi terbaru.
    pause
    exit /b 1
)
echo [OK]
echo.

:: [3] Download cloudflared + jalanin
echo [3/3] Menjalankan server...
taskkill /f /im node.exe 2>nul
taskkill /f /im cloudflared.exe 2>nul
timeout /t 2 >nul

if not exist "cloudflared.exe" (
    echo Download cloudflared...
    curl -sL https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe -o cloudflared.exe
)

start "MCP-Proxy" cmd /c "npx mcp-proxy --port 8080 --host 0.0.0.0 -- cmd /c ""%LOCALAPPDATA%\Roblox\mcp.bat"""
timeout /t 4 >nul

echo.
echo ============================================
echo  SETUP SELESAI!
echo ============================================
echo.
echo JENDELA BARU AKAN TERBUKA.
echo Copy URL https://xxxx.trycloudflare.com
echo Kirim URL itu ke developer.
echo.
echo * Tutup jendela ini kalo mau matiin server
echo.
pause

start "Cloudflare-Tunnel - COPY URL INI" cmd /c "cloudflared.exe tunnel --url http://localhost:8080 & pause"
exit

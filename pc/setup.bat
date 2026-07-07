@echo off
title Roblox MCP - Setup
color 0A

echo ============================================
echo    ROBLOX MCP VIA MOBILE - PC SETUP
echo ============================================
echo.

:: [1] Cek Node.js
echo [1/3] Memeriksa Node.js...
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js belum terinstall!
    echo Download: https://nodejs.org (LTS, next-next)
    pause
    exit /b 1
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
echo [OK] mcp.bat ditemukan
echo.

:: [3] Download cloudflared + jalanin
echo [3/3] Menjalankan server...
taskkill /f /im node.exe 2>nul
taskkill /f /im cloudflared.exe 2>nul
timeout /t 2 >nul

if not exist "cloudflared.exe" (
    echo Downloading cloudflared...
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

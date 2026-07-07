@echo off
title Roblox MCP - Setup
color 0A

echo ============================================
echo    ROBLOX MCP VIA MOBILE - PC SETUP
echo ============================================
echo.

:: [1] Cek Node.js
echo [1/4] Memeriksa Node.js...
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js belum terinstall!
    echo Download: https://nodejs.org (LTS, next-next)
    pause
    exit /b 1
)
echo [OK]
echo.

:: [2] Clone + Install Roblox MCP
echo [2/4] Setup Roblox MCP Server...
if not exist "package.json" (
    git clone https://github.com/paralov/roblox-studio-opencode-mcp . 2>nul
)
if not exist "node_modules" (
    call npm install
    call npm run build
)
call npm run install-plugin 2>nul
echo [OK] Plugin terinstall di Roblox Studio
echo.

:: [3] Download cloudflared (kalo belum ada)
echo [3/4] Memeriksa cloudflared...
if not exist "cloudflared.exe" (
    echo Downloading cloudflared...
    curl -sL https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe -o cloudflared.exe
)
echo [OK]
echo.

:: [4] Jalanin server + tunnel
echo [4/4] Menjalankan server...
taskkill /f /im node.exe 2>nul
taskkill /f /im cloudflared.exe 2>nul
timeout /t 2 >nul

start "MCP-Proxy" cmd /c "npx mcp-proxy --port 8080 --host 0.0.0.0 -- node dist/index.js"
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

@echo off
title Roblox MCP - Setup
color 0A

echo ============================================
echo    ROBLOX MCP VIA MOBILE - PC SETUP
echo ============================================
echo.
echo Sedang memeriksa Node.js...
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js belum terinstall!
    echo.
    echo Download dan install dari: https://nodejs.org
    echo Pilih versi LTS, install default saja.
    echo.
    echo Setelah selesai, jalankan script ini lagi.
    pause
    exit /b 1
)
echo [OK] Node.js terinstall
echo.

echo [1/4] Clone Roblox MCP Server...
if not exist "package.json" (
    git clone https://github.com/paralov/roblox-studio-opencode-mcp . 2>nul
)
if not exist "package.json" (
    echo [ERROR] Gagal clone repo. Cek koneksi internet.
    pause
    exit /b 1
)
echo [OK]
echo.

echo [2/4] Install dependencies...
if not exist "node_modules" (
    call npm install
    call npm run build
)
echo [OK]
echo.

echo [3/4] Install plugin Roblox Studio...
call npm run install-plugin 2>nul
echo [OK] Plugin terinstall.
echo.

echo [4/4] Menjalankan MCP Proxy...
taskkill /f /im node.exe 2>nul
timeout /t 2 >nul

start "MCP-Proxy" cmd /c "npx mcp-proxy --port 8080 --host 0.0.0.0 -- node dist/index.js"
timeout /t 4 >nul

echo.
echo ============================================
echo  SETUP SELESAI!
echo ============================================
echo.
echo 1. Buka Roblox Studio -^> klik plugin "MCP Bridge"
echo 2. Cari IP Tailscale PC ini:
echo.
echo    Buka cmd, ketik:
echo      ipconfig
echo    Cari bagian "Tailscale" -^> cari IPv4 (100.x.x.x)
echo    ATAU instal Tailscale dan ketik:
echo      tailscale ip -4
echo.
echo 3. Kirim IP 100.x.x.x tersebut KE DEVELOPER
echo.
echo Server berjalan di background.
echo Tekan tombol apa saja untuk keluar...
pause >nul
exit

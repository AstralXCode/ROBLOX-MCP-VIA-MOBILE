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

echo Sedang memeriksa ngrok...
where ngrok >nul 2>&1
if %errorlevel% neq 0 (
    echo [INFO] ngrok belum terinstall.
    echo.
    echo Download ngrok dari: https://ngrok.com/download
    echo Extract file, taruh "ngrok.exe" di folder ini.
    echo.
    pause
    exit /b 1
)
echo [OK] ngrok terinstall
echo.

echo [1/4] Meng-clone Roblox MCP Server...
if not exist "package.json" (
    git clone https://github.com/paralov/roblox-studio-opencode-mcp . 2>nul
    if exist "temp_clone" (
        xcopy /E /Y temp_clone\* .  >nul 2>&1
        rmdir /s /q temp_clone
    )
)
echo [OK]
echo.

echo [2/4] Menginstall dependencies...
if not exist "node_modules" (
    call npm install
    call npm run build
)
echo [OK]
echo.

echo [3/4] Menginstall plugin Roblox Studio...
call npm run install-plugin 2>nul
echo [OK] Plugin terinstall. Aktifkan plugin "MCP Bridge" di Roblox Studio.
echo.

echo [4/4] Menjalankan server...
echo.
echo HENTIKAN proses lama jika ada...
taskkill /f /im node.exe 2>nul
taskkill /f /im ngrok.exe 2>nul
timeout /t 2 >nul

echo Memulai MCP Proxy...
start "MCP-Proxy" cmd /c "npx mcp-proxy --port 8080 --host 0.0.0.0 -- node dist/index.js"
timeout /t 4 >nul

echo Memulai ngrok tunnel...
start "ngrok-Tunnel" cmd /c "ngrok http 8080 --log=stdout"
timeout /t 5 >nul

echo.
echo ============================================
echo  SETUP SELESAI!
echo ============================================
echo.
echo 1. Buka Roblox Studio
echo 2. Klik plugin "MCP Bridge" di toolbar
echo 3. Buka http://localhost:4040 di browser
echo 4. Copy URL dari halaman itu (https://xxxx.ngrok.io)
echo 5. Kirim URL tersebut ke developer
echo.
echo Tekan tombol apa saja untuk keluar...
echo (Server tetap berjalan di background)
pause >nul
exit

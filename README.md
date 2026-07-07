# ROBLOX MCP VIA MOBILE

Menghubungkan **OpenCode di HP Android (Termux)** ke **Roblox MCP Server** yang berjalan di **PC Client** — via **Cloudflare Quick Tunnel**.

## Cara Kerja

```
HP (OpenCode) ───> Cloudflare ───> PC (cloudflared) ───> mcp-proxy:8080 ───> Roblox MCP Server ───> Roblox Studio
```

## Panduan Cepat

| Perangkat | Yang perlu dilakukan |
|-----------|---------------------|
| **PC Client** | 1. Install Node.js  2. Double-click `setup.bat`  3. Copy URL dari jendela Cloudflare  4. Kirim URL ke developer |
| **HP Developer** | 1. Install Termux  2. Jalankan `setup.sh`  3. Masukkan URL dari PC  4. Jalankan `opencode` |

## Kenapa Cloudflare?

- ✅ Tanpa login/daftar akun
- ✅ Tanpa install ribet (1 file .exe)
- ✅ Stabil 6-24 jam
- ✅ HTTPS otomatis
- ✅ Beda jaringan tetap bisa (WiFi/4G)

## Struktur Repo

```
├── pc/
│   ├── setup.bat        # Klik 2x, langsung jalan (Windows)
│   ├── README.md        # Panduan lengkap untuk client
├── phone/
│   ├── setup.sh         # Script instalasi Termux + OpenCode
│   ├── opencode.json    # Config MCP tinggal pakai
│   ├── README.md        # Panduan lengkap untuk HP
```

---
Dibuat oleh [@AstralXCode](https://github.com/AstralXCode)

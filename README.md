# ROBLOX MCP VIA MOBILE

Menghubungkan **OpenCode di HP Android (Termux)** ke **MCP bawaan Roblox Studio** di **PC Client** — via **Cloudflare Quick Tunnel**.

```
HP (OpenCode) ───> Cloudflare ───> PC (cloudflared) ───> mcp-proxy ───> mcp.bat (bawaan Roblox) ───> Roblox Studio
```

## Panduan Cepat

| Perangkat | Yang perlu dilakukan |
|-----------|---------------------|
| **PC Client** | 1. Install Node.js  2. Double-click `setup.bat`  3. Copy URL dari jendela Cloudflare  4. Kirim URL ke developer |
| **HP Developer** | 1. Install Termux  2. Jalankan `setup.sh`  3. Masukkan URL dari PC  4. Jalankan `opencode` |

## Keunggulan

- ✅ **Tanpa login/daftar** (Cloudflare Quick Tunnel)
- ✅ **Pakai MCP bawaan Roblox Studio** — gak perlu install plugin tambahan
- ✅ Stabil 6-24 jam
- ✅ Beda jaringan tetap bisa (WiFi/4G)

## Struktur Repo

```
├── pc/
│   ├── setup.bat        # Klik 2x, langsung jalan
│   ├── README.md        # Panduan client
├── phone/
│   ├── setup.sh         # Script instalasi Termux + OpenCode
│   ├── opencode.json    # Config MCP
│   ├── README.md        # Panduan HP
```

---
Dibuat oleh [@AstralXCode](https://github.com/AstralXCode)

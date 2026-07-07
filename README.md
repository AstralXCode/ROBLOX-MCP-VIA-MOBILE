# ROBLOX MCP VIA MOBILE

Menghubungkan **OpenCode di HP Android (Termux)** ke **Roblox MCP Server** yang berjalan di **PC Client**.

## Cara Kerja

```
HP (OpenCode) ---> Internet ---> PC (mcp-proxy) ---> Roblox MCP Server ---> Roblox Studio
```

## Panduan Cepat

| Perangkat | Yang perlu dilakukan |
|-----------|---------------------|
| **PC Client** | 1. Install Node.js & ngrok  2. Double-click `setup.bat`  3. Kirim URL ke developer |
| **HP Developer** | 1. Install Termux & OpenCode  2. Jalankan `setup.sh`  3. Masukkan URL dari PC |

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

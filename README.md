# ROBLOX MCP VIA MOBILE

Menghubungkan **OpenCode di HP Android (Termux)** ke **Roblox MCP Server** yang berjalan di **PC Client** — menggunakan **Tailscale** sebagai jembatan.

## Cara Kerja

```
HP (OpenCode) ─── Tailscale ───> PC (mcp-proxy:8080) ───> Roblox MCP Server ───> Roblox Studio
```

## Panduan Cepat

| Perangkat | Yang perlu dilakukan |
|-----------|---------------------|
| **PC Client** | 1. Install Node.js  2. Install Tailscale (login Google)  3. Double-click `setup.bat`  4. Kirim IP Tailscale ke developer |
| **HP Developer** | 1. Install Termux & Tailscale (login Google same)  2. Jalankan `setup.sh`  3. Masukkan IP Tailscale PC |

## Kenapa Tailscale?

- ✅ Stabil 24 jam — tidak seperti ngrok/localhost.run
- ✅ IP tetap (100.x.x.x) — tidak berubah setiap restart
- ✅ Enkripsi end-to-end
- ✅ Gratis untuk personal
- ✅ Bisa beda jaringan (WiFi/4G dari mana aja)

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

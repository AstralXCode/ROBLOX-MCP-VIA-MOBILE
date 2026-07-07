# Setup PC Client - Roblox MCP via Mobile (Cloudflare)

Panduan untuk **client** — jadikan PC sebagai jembatan Roblox MCP ke developer.

## Yang Dibutuhkan

1. **Node.js** — https://nodejs.org (install LTS, next-next saja)
2. **Koneksi internet**

## Cara Setup (2 Menit)

### 1. Download & extract folder

Download repo ini, extract ke folder di PC.

### 2. Double-click `setup.bat`

Script akan otomatis:
- ✅ Clone Roblox MCP Server
- ✅ Install semua dependencies
- ✅ Install plugin ke Roblox Studio
- ✅ Download cloudflared
- ✅ Jalankan MCP proxy + Cloudflare tunnel

### 3. Buka Roblox Studio

Klik **Plugins** → klik **MCP Bridge**

### 4. Copy URL

Akan muncul jendela baru bertuliskan:
```
https://acak-acak.trycloudflare.com
```
Copy URL itu (tanpa `/mcp`) dan kirim ke developer.

**Selesai!**

## Cara Matikan

- Tutup semua jendela CMD yang terbuka
- Atau restart PC

## Troubleshooting

| Masalah | Solusi |
|---------|--------|
| Node.js error | Install dari https://nodejs.org |
| Gagal download cloudflared | Matikan antivirus sementara |
| MCP Bridge tidak muncul | Restart Roblox Studio |
| Port 8080 dipakai | Restart PC, coba lagi |

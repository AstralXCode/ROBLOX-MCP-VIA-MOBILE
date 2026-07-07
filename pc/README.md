# Setup PC Client - Roblox MCP via Mobile (Cloudflare)

Panduan untuk **client** — jadikan PC sebagai jembatan Roblox MCP ke developer.

## Yang Dibutuhkan

1. **Node.js** — https://nodejs.org (install LTS, next-next saja)
2. **Roblox Studio** (versi terbaru, sudah ada MCP bawaan)
3. **Koneksi internet**

## Cara Setup (1 Menit)

### 1. Install Node.js

Download dari https://nodejs.org, install (next-next).

### 2. Download & jalankan `setup.bat`

- Download folder ini, double-click `setup.bat`
- Script akan otomatis:
  - ✅ Download cloudflared
  - ✅ Jalankan MCP bawaan Roblox via proxy
  - ✅ Buka Cloudflare Tunnel

### 3. Copy URL

Akan muncul jendela baru bertuliskan:
```
https://acak-acak.trycloudflare.com
```
Copy URL itu dan kirim ke developer.

**Udah. Selesai.**

## Cara Matikan

Tutup semua jendela CMD.

## Troubleshooting

| Masalah | Solusi |
|---------|--------|
| "mcp.bat tidak ditemukan" | Update Roblox Studio ke versi terbaru |
| Node.js error | Install dari https://nodejs.org |
| Gagal download cloudflared | Matikan antivirus sementara |

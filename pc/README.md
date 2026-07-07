# Setup PC Client - Roblox MCP via Mobile (Tailscale)

Panduan ini untuk **client** yang PC-nya akan dijadikan jembatan Roblox MCP ke developer.

## Yang Dibutuhkan

1. **Node.js** - https://nodejs.org (install LTS, next-next saja)
2. **Tailscale** - https://tailscale.com/download
   - Install, login dengan **akun Google/GitHub**
3. **Roblox Studio** (sudah terinstall)
4. **Koneksi internet**

## Cara Setup (3 Menit)

### 1. Install Tailscale

- Download & install dari https://tailscale.com/download
- Login pakai **akun Google** (cepat, tidak perlu verifikasi)
- Pastikan status **Connected**

### 2. Download & jalankan `setup.bat`

- Double-click `setup.bat`
- Script akan otomatis:
  - ✅ Clone Roblox MCP server
  - ✅ Install dependencies
  - ✅ Install plugin ke Roblox Studio
  - ✅ Jalankan MCP proxy di port 8080

### 3. Buka Roblox Studio

Klik tab **Plugins** → Klik tombol **MCP Bridge**

### 4. Cari IP Tailscale

Buka CMD, ketik:
```
tailscale ip -4
```
Akan muncul IP seperti `100.85.23.177`

### 5. Kirim IP ke Developer

Kirim angka IP itu ke developer. **Selesai!**

## Troubleshooting

| Masalah | Solusi |
|---------|--------|
| "Node.js not found" | Install dari https://nodejs.org |
| Port 8080 sudah dipakai | Tutup program lain / restart PC |
| MCP Bridge tidak muncul | Restart Roblox Studio, cek Plugins tab |
| Bedanya tailnet/akun | Pastikan PC dan HP pake **akun Google yang sama** di Tailscale |

## Cara Matikan Server

- Tutup jendela CMD yang terbuka, atau
- Restart PC

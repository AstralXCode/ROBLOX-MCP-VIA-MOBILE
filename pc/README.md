# Setup PC Client - Roblox MCP via Mobile

Panduan ini untuk **client** yang PC-nya akan dijadikan jembatan Roblox MCP ke developer.

## Yang Dibutuhkan

1. **Node.js** - https://nodejs.org (install LTS, next-next saja)
2. **ngrok** - https://ngrok.com/download
   - Download `ngrok.exe`
   - Extract, taruh di folder yang sama dengan `setup.bat`
3. **Roblox Studio** (sudah terinstall)
4. **Koneksi internet**

## Cara Setup (2 Menit)

### 1. Download file

Download & extract folder ini ke PC.

### 2. Double-click `setup.bat`

Script akan otomatis:
- ✅ Install semua dependencies
- ✅ Install plugin ke Roblox Studio
- ✅ Jalankan server + tunnel ngrok

### 3. Buka Roblox Studio

Klik tab **Plugins** -> klik tombol **MCP Bridge** (harus aktif).

### 4. Kirim URL ke Developer

- Buka http://localhost:4040 di browser
- Copy URL yang ada tulisan `https://xxxx.ngrok.io`
- Kirim URL itu ke developer

## Troubleshooting

| Masalah | Solusi |
|---------|--------|
| "Node.js not found" | Install Node.js dari https://nodejs.org |
| "ngrok not found" | Extract ngrok.exe ke folder yang sama |
| Port 8080 sudah dipakai | Tutup program lain atau restart PC |
| MCP Bridge tidak muncul | Restart Roblox Studio, cek Plugins tab |
| Tunnel error | Matikan antivirus/firewall sementara |

## Cara Menghentikan Server

- Tutup aja jendela Command Prompt yang terbuka
- Atau restart PC

# Setup HP (Termux) - Roblox MCP via Mobile

Panduan untuk **developer** yang akan mengontrol Roblox Studio dari HP.

## Yang Dibutuhkan

1. **Termux** - Install dari F-Droid (bukan Play Store!)
   - https://f-droid.org/packages/com.termux/
2. **Koneksi internet** (WiFi/4G/5G)

## Cara Setup

### 1. Install Termux

Download dari F-Droid, install, lalu buka.

### 2. Jalankan script

```bash
curl -fsSL https://raw.githubusercontent.com/AstralXCode/ROBLOX-MCP-VIA-MOBILE/main/phone/setup.sh | bash
```

atau download manual:
```bash
pkg install -y git
git clone https://github.com/AstralXCode/ROBLOX-MCP-VIA-MOBILE
cd ROBLOX-MCP-VIA-MOBILE/phone
bash setup.sh
```

### 3. Edit config

```bash
nano ~/.config/opencode/opencode.json
```

Ganti `GANTI_DENGAN_URL_NGROK` dengan URL dari client PC.
Simpan: Ctrl+X, Y, Enter.

### 4. Jalankan OpenCode

```bash
opencode
```

Beres! Sekarang OpenCode di HP bisa ngobrol dengan Roblox Studio di PC client.

## Update Config

Kalau URL ngrok berubah (setiap restart PC), tinggal edit lagi:

```bash
nano ~/.config/opencode/opencode.json
```

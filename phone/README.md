# Setup HP - Roblox MCP via Mobile (Cloudflare)

Panduan untuk **developer** — kontrol Roblox Studio dari HP.

## Yang Dibutuhkan

1. **Termux** — install dari F-Droid (bukan Play Store)
   - https://f-droid.org/packages/com.termux/
2. **Koneksi internet** (WiFi/4G/5G)

## Cara Setup

### 1. Install Termux

Download dari F-Droid, install, buka.

### 2. Jalankan script

```bash
curl -fsSL https://raw.githubusercontent.com/AstralXCode/ROBLOX-MCP-VIA-MOBILE/main/phone/setup.sh | bash
```

### 3. Masukkan URL dari client

```bash
nano ~/.config/opencode/opencode.json
```

Ganti `GANTI_DENGAN_URL_CLOUDFLARE` dengan URL dari client.
Contoh: `https://acak-acak.trycloudflare.com/mcp`

Simpan: Ctrl+X → Y → Enter

### 4. Jalankan OpenCode

```bash
opencode
```

**Siap!** OpenCode di HP terhubung ke Roblox Studio di PC client.

## Catatan

- URL berubah tiap client restart — minta URL baru tiap mau make
- HP dan PC tidak perlu dalam 1 jaringan (beda WiFi/4G bisa)

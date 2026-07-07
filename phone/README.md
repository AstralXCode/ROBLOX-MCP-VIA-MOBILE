# Setup HP - Roblox MCP via Mobile (Tailscale)

Panduan untuk **developer** yang akan mengontrol Roblox Studio dari HP via Tailscale.

## Yang Dibutuhkan

1. **Termux** dari F-Droid (bukan Play Store)
   - https://f-droid.org/packages/com.termux/
2. **Tailscale** dari Play Store / F-Droid
3. **Koneksi internet** (WiFi/4G/5G)

## Cara Setup

### 1. Install Tailscale di HP

- Buka Play Store
- Install **Tailscale**
- Login dengan **akun Google yang SAMA** dengan PC client
- Pastikan status **Connected**

### 2. Install Termux

Download & install dari F-Droid.

### 3. Jalankan script setup

```bash
curl -fsSL https://raw.githubusercontent.com/AstralXCode/ROBLOX-MCP-VIA-MOBILE/main/phone/setup.sh | bash
```

### 4. Masukkan IP Tailscale PC

```bash
nano ~/.config/opencode/opencode.json
```

Ganti `GANTI_DENGAN_TAILSCALE_IP` dengan IP dari client.
Contoh: `http://100.85.23.177:8080/mcp`

Simpan: Ctrl+X → Y → Enter

### 5. Jalankan OpenCode

```bash
opencode
```

**Selesai!** OpenCode di HP sekarang terhubung ke Roblox Studio di PC client.

## Catatan

- IP Tailscale (100.x.x.x) **tidak berubah** selama PC tidak di-uninstall
- Tidak perlu setup ulang setiap kali konek
- Bisa pakai jaringan apa saja (WiFi/4G), yang penting HP & PC login Tailscale akun sama

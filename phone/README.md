# HP Developer - Setup

Konfigurasi Termux + OpenCode untuk mengontrol Roblox Studio dari HP.

## Prasyarat

- **Termux** dari F-Droid (bukan Play Store)
  - https://f-droid.org/packages/com.termux/

## Instalasi

Buka Termux, jalankan perintah berikut:

```bash
curl -fsSL https://raw.githubusercontent.com/AstralXCode/ROBLOX-MCP-VIA-MOBILE/main/phone/setup.sh | bash
```

Script akan menginstall OpenCode dan membuat file konfigurasi dasar.

## Konfigurasi

Edit file konfigurasi:

```bash
nano ~/.config/opencode/opencode.json
```

Ubah `GANTI_DENGAN_URL_CLOUDFLARE` dengan URL yang diterima dari client.

Contoh:

```json
{
  "url": "https://acak-acak.trycloudflare.com/mcp"
}
```

Simpan: `Ctrl+X` → `Y` → `Enter`

## Menjalankan OpenCode

```bash
opencode
```

## Troubleshooting

| Masalah | Solusi |
|---------|--------|
| `opencode: command not found` | Jalankan `source ~/.bashrc` |
| Tidak bisa connect ke server | Minta URL baru dari client |
| Error "connection refused" | Pastikan client sedang menjalankan setup.bat |

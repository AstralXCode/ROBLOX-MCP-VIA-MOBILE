# Roblox MCP via Mobile

Hubungkan **OpenCode di HP Android (Termux)** ke **MCP bawaan Roblox Studio** di PC via Cloudflare Tunnel.

## Cara Kerja

```
HP (OpenCode) → Cloudflare Tunnel → PC (cloudflared) → mcp-proxy:8080 → mcp.bat (Roblox) → Roblox Studio
```

## Panduan Cepat

### PC Client (30 detik)

| Langkah | Tindakan |
|---------|----------|
| 1 | Double-click `pc/setup.bat` |
| 2 | Klik **Yes** jika ada permintaan administrator |
| 3 | Copy URL `https://xxx.trycloudflare.com` dari jendela yang muncul |
| 4 | Kirim URL ke developer |

> **Prasyarat:** Roblox Studio versi terbaru harus sudah terinstall.
>
> **Catatan:** URL berubah setiap kali restart. Tutup semua jendela CMD untuk mematikan server.

### HP Developer

| Langkah | Perintah |
|---------|----------|
| 1 | Install **Termux** dari [F-Droid](https://f-droid.org/packages/com.termux/) |
| 2 | Jalankan script: |

```bash
curl -fsSL https://raw.githubusercontent.com/AstralXCode/ROBLOX-MCP-VIA-MOBILE/main/phone/setup.sh | bash
```

| 3 | Edit config: |

```bash
nano ~/.config/opencode/opencode.json
```

> Ganti `GANTI_DENGAN_URL_CLOUDFLARE` dengan URL dari client.
> Contoh: `https://acak-acak.trycloudflare.com/mcp`
> Simpan: `Ctrl+X` → `Y` → `Enter`

| 4 | Jalankan OpenCode: |

```bash
opencode
```

## Struktur Repo

```
ROBLOX-MCP-VIA-MOBILE/
├── README.md
├── pc/
│   ├── setup.bat          # Double-click, auto install + run
│   └── README.md          # Panduan client
└── phone/
    ├── setup.sh           # Install OpenCode + config
    ├── opencode.json      # Template konfigurasi MCP
    └── README.md          # Panduan HP
```

## Troubleshooting

### PC Client

| Masalah | Solusi |
|---------|--------|
| mcp.bat tidak ditemukan | Update Roblox Studio ke versi terbaru |
| Gagal download cloudflared | Nonaktifkan antivirus/firewall sementara |
| Cloudflare error | Restart PC dan jalankan ulang |

### HP Developer

| Masalah | Solusi |
|---------|--------|
| `opencode: command not found` | Jalankan `source ~/.bashrc` |
| Tidak bisa connect | Minta URL baru (server client mungkin mati) |
| Error di OpenCode | Pastikan URL diakhiri dengan `/mcp` |

---

Dibuat oleh [@AstralXCode](https://github.com/AstralXCode)

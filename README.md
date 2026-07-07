<p align="center">
  <img src="https://img.shields.io/badge/roblox%20mcp-via%20mobile-red?style=for-the-badge&logo=roblox" alt="Roblox MCP via Mobile">
</p>

<h1 align="center">🤖 ROBLOX MCP VIA MOBILE</h1>

<p align="center">
  <b>Kontrol Roblox Studio dari HP Android via OpenCode + Cloudflare Tunnel</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/platform-Android%20(Termux)-3DDC84?style=flat-square&logo=android">
  <img src="https://img.shields.io/badge/platform-Windows-0078D6?style=flat-square&logo=windows">
  <img src="https://img.shields.io/badge/no-login%20required-success?style=flat-square">
  <img src="https://img.shields.io/badge/MCP-Roblox%20Studio-blue?style=flat-square">
</p>

---

## 📋 Cara Kerja

```
┌──────────────┐     ┌──────────┐     ┌─────────────────┐     ┌───────────────┐     ┌────────────────┐
│  HP Android   │     │Cloudflare│     │  PC Client       │     │   mcp-proxy    │     │ Roblox Studio  │
│  (OpenCode)   │────▶│  Tunnel  │────▶│  (cloudflared)   │────▶│   :8080        │────▶│  (MCP bawaan)  │
└──────────────┘     └──────────┘     └─────────────────┘     └───────────────┘     └────────────────┘
```

---

## 🚀 Quick Start

### 👤 PC Client (30 Detik)

| Step | Yang Dilakukan |
|------|---------------|
| **1** | Double-click `setup.bat` → klik **Yes** (UAC) |
| **2** | Tunggu sampai jendela Cloudflare terbuka |
| **3** | Copy URL `https://xxx.trycloudflare.com` |
| **4** | Kirim URL itu ke developer **via WhatsApp/Telegram** |

> ✅ **Otomatis:** Install Node.js + cloudflared + jalankan MCP proxy
>
> ⚠️ Pastikan **Roblox Studio** terinstall dan versi terbaru
>
> ❌ Tutup semua jendela CMD untuk mematikan server

---

### 📱 HP Developer (2 Menit)

| Step | Perintah |
|------|----------|
| **1** | Install **Termux** dari [F-Droid](https://f-droid.org/packages/com.termux/) |
| **2** | Jalankan perintah: |

```bash
curl -fsSL https://raw.githubusercontent.com/AstralXCode/ROBLOX-MCP-VIA-MOBILE/main/phone/setup.sh | bash
```

| **4** | Masukkan URL dari client: |
|-------|--------------------------|

```bash
nano ~/.config/opencode/opencode.json
# Ganti "GANTI_DENGAN_URL_CLOUDFLARE" dengan URL dari client
# Contoh: https://acak-acak.trycloudflare.com/mcp
# Simpan: Ctrl+X → Y → Enter
```

| **5** | Jalankan OpenCode: |
|-------|-------------------|

```bash
opencode
```

---

## 📦 Struktur Repo

```
📁 ROBLOX-MCP-VIA-MOBILE/
├── 📄 README.md              ← Kamu di sini
├── 📁 pc/
│   ├── 📄 setup.bat          ← 💎 Klik 2x, langsung jalan
│   └── 📄 README.md          ← Panduan client
└── 📁 phone/
    ├── 📄 setup.sh           ← Script instalasi Termux + OpenCode
    ├── 📄 opencode.json      ← Config MCP siap pakai
    └── 📄 README.md          ← Panduan HP
```

---

## ✨ Keunggulan

| Fitur | Keterangan |
|-------|-----------|
| 🔓 **No Login** | Cloudflare Quick Tunnel — tanpa daftar akun |
| 🎯 **MCP Bawaan** | Pakai `mcp.bat` dari Roblox Studio, tanpa plugin tambahan |
| ⏱ **Stabil** | Cloudflare tahan 6-24 jam per sesi |
| 🌐 **Beda Jaringan** | HP pakai 4G, PC di rumah, tetap bisa |
| 🪄 **Auto Install** | Node.js + cloudflared diinstall otomatis oleh script |

---

## 🔧 Troubleshooting

### PC Client

| Masalah | Solusi |
|---------|--------|
| UAC diminta | Klik **Yes** — wajib untuk install Node.js |
| `mcp.bat` tidak ditemukan | **Update** Roblox Studio ke versi terbaru |
| Gagal download cloudflared | Matikan **antivirus** / **firewall** sementara |
| Cloudflare error `failed` | Coba **restart** PC lalu jalankan ulang |

### HP Developer

| Masalah | Solusi |
|---------|--------|
| `command not found` | Jalankan: `source ~/.bashrc` |
| OpenCode tidak bisa connect | Minta **URL baru** dari client (server dimatikan?) |
| Proxy error | Pastikan URL diakhiri dengan **`/mcp`** |

---

<p align="center">
  Dibuat dengan ❤️ oleh <a href="https://github.com/AstralXCode">@AstralXCode</a>
</p>

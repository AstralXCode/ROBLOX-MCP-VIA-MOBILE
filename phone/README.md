<p align="center">
  <img src="https://img.shields.io/badge/📱%20HP%20DEVELOPER-SETUP-brightgreen?style=for-the-badge" alt="HP Developer Setup">
</p>

<h1 align="center">📱 Setup HP Developer</h1>
<p align="center"><b>Kontrol Roblox Studio langsung dari HP Android kamu</b></p>

---

## ⚡ Quick Setup

### 1️⃣ Install Termux

Download **Termux** dari **F-Droid** (bukan Play Store!):

```
https://f-droid.org/packages/com.termux/
```

### 2️⃣ Jalankan Script

Buka Termux, jalankan:

```bash
curl -fsSL https://raw.githubusercontent.com/AstralXCode/ROBLOX-MCP-VIA-MOBILE/main/phone/setup.sh | bash
```

Script akan menginstall **OpenCode** + config dasar.

### 3️⃣ Masukkan URL dari Client

```bash
nano ~/.config/opencode/opencode.json
```

Ubah `GANTI_DENGAN_URL_CLOUDFLARE` menjadi URL dari client:

```json
{
  "url": "https://acak-acak.trycloudflare.com/mcp"
}
```

> Simpan: **Ctrl+X** → **Y** → **Enter**

### 4️⃣ Jalankan OpenCode

```bash
opencode
```

---

## 📝 Catatan

| Situasi | Tindakan |
|---------|----------|
| Client restart PC | Minta **URL baru** |
| Ganti jaringan (4G/WiFi) | Tetap bisa, **tidak perlu setup ulang** |
| Lupa URL lama | Minta URL baru dari client |

---

## ❓ Troubleshooting

| ❗ Masalah | 💡 Solusi |
|-------|--------|
| `curl: not found` | Install dulu: `pkg install curl` |
| `opencode: command not found` | Jalankan: `source ~/.bashrc` |
| Tidak bisa connect | Pastikan URL client **masih aktif** |
| Error di OpenCode | Cek URL sudah diakhiri **`/mcp`** |

---

<p align="center">
  <sub>Pastikan PC client sedang menjalankan setup.bat</sub>
</p>

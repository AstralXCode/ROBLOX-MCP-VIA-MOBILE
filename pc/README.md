# PC Client - Setup

Jalankan `setup.bat` untuk menghubungkan Roblox Studio ke developer via Cloudflare Tunnel.

## Cara Penggunaan

1. **Double-click** `setup.bat`
2. Klik **Yes** saat diminta izin administrator
3. Tunggu hingga jendela Cloudflare terbuka
4. **Copy URL** `https://xxx.trycloudflare.com`
5. **Kirim URL** ke developer

> Script akan menginstall Node.js dan cloudflared secara otomatis jika belum tersedia.

## Prasyarat

- Roblox Studio (versi terbaru) — [download](https://www.roblox.com/create)

## Troubleshooting

| Masalah | Solusi |
|---------|--------|
| mcp.bat tidak ditemukan | Update Roblox Studio ke versi terbaru |
| Gagal download cloudflared | Nonaktifkan antivirus/firewall |
| Cloudflare error | Restart PC, jalankan ulang script |

## Catatan

- Biarkan jendela CMD tetap terbuka selama sesi berlangsung
- URL akan berubah setiap kali script dijalankan ulang
- Tutup semua jendela CMD untuk menghentikan server

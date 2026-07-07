#!/data/data/com.termux/files/usr/bin/bash

echo "=============================="
echo " ROBLOX MCP - SETUP HP"
echo "=============================="
echo ""

echo "[1/4] Install Tailscale (via app)..."
echo ">>> BUKA Play Store / F-Droid, install 'Tailscale' <<<"
echo ">>> Login dengan akun Google YANG SAMA dengan PC <<<"
echo ">>> Setelah login, balik ke Termux ini <<<"
read -p "Tekan Enter setelah Tailscale terinstall & login..."
echo ""

echo "[2/4] Update Termux..."
pkg update -y
echo ""

echo "[3/4] Install OpenCode..."
pkg install -y curl git
curl -fsSL https://opencode.ai/install | bash
export PATH="$HOME/.opencode/bin:$PATH"
echo 'export PATH="$HOME/.opencode/bin:$PATH"' >> ~/.bashrc
echo ""

echo "[4/4] Buat config OpenCode..."
mkdir -p ~/.config/opencode

cat > ~/.config/opencode/opencode.json << 'EOF'
{
  "$schema": "https://opencode.ai/config.json",
  "mcp": {
    "roblox-studio": {
      "type": "remote",
      "url": "http://GANTI_DENGAN_TAILSCALE_IP:8080/mcp"
    }
  }
}
EOF

echo ""
echo "=============================="
echo " SETUP SELESAI!"
echo "=============================="
echo ""
echo "Langkah selanjutnya:"
echo "1. Buka file config:"
echo "   nano ~/.config/opencode/opencode.json"
echo "2. Ganti 'GANTI_DENGAN_TAILSCALE_IP' dengan IP dari client"
echo "   Contoh: http://100.85.23.177:8080/mcp"
echo "3. Simpan (Ctrl+X, Y, Enter)"
echo "4. Jalankan OpenCode: opencode"
echo ""

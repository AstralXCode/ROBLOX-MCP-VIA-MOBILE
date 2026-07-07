#!/data/data/com.termux/files/usr/bin/bash

echo "=============================="
echo " ROBLOX MCP - SETUP HP"
echo "=============================="
echo ""

echo "[1/3] Update Termux..."
pkg update -y
echo ""

echo "[2/3] Install OpenCode..."
pkg install -y curl git
curl -fsSL https://opencode.ai/install | bash
export PATH="$HOME/.opencode/bin:$PATH"
echo 'export PATH="$HOME/.opencode/bin:$PATH"' >> ~/.bashrc
echo ""

echo "[3/3] Buat config OpenCode..."
mkdir -p ~/.config/opencode

cat > ~/.config/opencode/opencode.json << 'EOF'
{
  "$schema": "https://opencode.ai/config.json",
  "mcp": {
    "roblox-studio": {
      "type": "remote",
      "url": "https://GANTI_DENGAN_URL_NGROK/mcp"
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
echo "2. Ganti 'GANTI_DENGAN_URL_NGROK' dengan URL dari client"
echo "   Contoh: https://abc123.ngrok.io/mcp"
echo "3. Simpan (Ctrl+X, Y, Enter)"
echo "4. Jalankan OpenCode: opencode"
echo ""

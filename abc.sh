#!/bin/bash

# Blueprint URL
URL="https://github.com/NotJishnuisback/Free123/raw/refs/heads/main/subdomains.blueprint"

# Célmappa
TARGET_DIR="/var/www/pterodactyl"

# Ellenőrzi hogy létezik-e a mappa
if [ ! -d "$TARGET_DIR" ]; then
    echo "❌ A mappa nem létezik: $TARGET_DIR"
    exit 1
fi

echo "📁 Belépés: $TARGET_DIR"
cd "$TARGET_DIR"

echo "⬇️ Blueprint letöltése..."
curl -L -o subdomains.blueprint "$URL"

echo "⚙️ Telepítés..."
blueprint -i subdomains.blueprint

echo "✅ Kész!"

#!/usr/bin/env sh
set -eu

DEST="${XDG_CONFIG_HOME:-$HOME/.config}/starship.toml"
SRC="https://raw.githubusercontent.com/Maelkiz/starship-config/main/starship.toml"

echo "Installing Starship config..."

mkdir -p "$(dirname "$DEST")"

# Backup if an existing starship config file exists
if [ -f "$DEST" ]; then
    cp "$DEST" "$DEST.bak"
    echo "Existing config backed up to $DEST.bak"
fi

# Install the new config
if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$SRC" -o "$DEST"
elif command -v wget >/dev/null 2>&1; then
    wget -qO "$DEST" "$SRC"
else
    echo "Error: curl or wget is required"
    exit 1
fi

echo "Starship config installed at $DEST"

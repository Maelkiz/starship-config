#!/usr/bin/env sh
set -eu

DEST="$HOME/.config/starship/starship.toml"
SRC="https://raw.githubusercontent.com/Maelkiz/starship-config/main/starship.toml"

echo "Installing Starship config..."

# Create directory if it doesn't exist
mkdir -p "$(dirname "$DEST")"

# Download and overwrite config
if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$SRC" -o "$DEST"
elif command -v wget >/dev/null 2>&1; then
    wget -qO "$DEST" "$SRC"
else
    echo "Error: curl or wget is required"
    exit 1
fi

echo "Starship config installed at $DEST"

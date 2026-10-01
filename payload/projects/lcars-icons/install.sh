#!/usr/bin/env bash
# Install the LCARS icon theme for the current user (no root needed).
# Select it in System Settings > Colors & Themes > Icons.
set -euo pipefail
cd "$(dirname "$0")"
dest="${XDG_DATA_HOME:-$HOME/.local/share}/icons"
mkdir -p "$dest"
rm -rf "$dest/LCARS"
cp -r LCARS "$dest/"
command -v gtk-update-icon-cache >/dev/null && gtk-update-icon-cache -f -t "$dest/LCARS" >/dev/null 2>&1 || true
echo "LCARS icons installed to $dest/LCARS"

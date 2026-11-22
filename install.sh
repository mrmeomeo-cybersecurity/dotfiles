#!/usr/bin/env bash
# Codespaces dotfiles installer — runs automatically on codespace creation.
set -e
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
for f in .zshrc .gitconfig starship.toml; do
  target="$HOME/$f"
  [ "$f" = "starship.toml" ] && target="$HOME/.config/starship.toml" && mkdir -p "$HOME/.config"
  ln -sf "$DOTFILES_DIR/$f" "$target"
done
# Starship prompt (best effort; the shell config guards on its presence)
if ! command -v starship >/dev/null 2>&1; then
  curl -sS https://starship.rs/install.sh | sh -s -- -y >/dev/null 2>&1 || true
fi
echo "dotfiles installed from $DOTFILES_DIR"

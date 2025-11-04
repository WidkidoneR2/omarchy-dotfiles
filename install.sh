#!/bin/bash
# Omarchy Dotfiles Installation Script
# Automatically symlinks all configuration files

set -e  # Exit on error

echo "🚀 Installing Omarchy Tokyo Night Dotfiles..."
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to create symlink
create_symlink() {
    local source=$1
    local target=$2
    
    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$target")"
    
    # Backup existing file if it exists
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo -e "${YELLOW}Backing up existing: $target${NC}"
        mv "$target" "${target}.backup-$(date +%Y%m%d_%H%M%S)"
    fi
    
    # Create symlink
    ln -sf "$source" "$target"
    echo -e "${GREEN}✓${NC} Linked: $target"
}

# Get script directory (where dotfiles repo is)
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "📁 Dotfiles directory: $DOTFILES_DIR"
echo ""

# === HYPRLAND CONFIGS ===
echo "⚙️  Installing Hyprland configs..."
create_symlink "$DOTFILES_DIR/config/hypr/hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
create_symlink "$DOTFILES_DIR/config/hypr/monitors.conf" "$HOME/.config/hypr/monitors.conf"
create_symlink "$DOTFILES_DIR/config/hypr/bindings.conf" "$HOME/.config/hypr/bindings.conf"
create_symlink "$DOTFILES_DIR/config/hypr/autostart.conf" "$HOME/.config/hypr/autostart.conf"
create_symlink "$DOTFILES_DIR/config/hypr/windows.conf" "$HOME/.config/hypr/windows.conf"
create_symlink "$DOTFILES_DIR/config/hypr/looknfeel.conf" "$HOME/.config/hypr/looknfeel.conf"
create_symlink "$DOTFILES_DIR/config/hypr/hypridle.conf" "$HOME/.config/hypr/hypridle.conf"

# === WAYBAR CONFIGS ===
echo ""
echo "📊 Installing Waybar configs..."
create_symlink "$DOTFILES_DIR/config/waybar/config.jsonc" "$HOME/.config/waybar/config.jsonc"
create_symlink "$DOTFILES_DIR/config/waybar/style.css" "$HOME/.config/waybar/style.css"

# === ALACRITTY CONFIG ===
echo ""
echo "🖥️  Installing Alacritty config..."
create_symlink "$DOTFILES_DIR/config/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"

# === NEOVIM CONFIG ===
echo ""
echo "📝 Installing Neovim cheat sheet..."
create_symlink "$DOTFILES_DIR/config/nvim/lazyvim-cheatsheet.md" "$HOME/.config/nvim/lazyvim-cheatsheet.md"

# === BASH CONFIGS ===
echo ""
echo "🐚 Installing Bash configs..."
create_symlink "$DOTFILES_DIR/bashrc" "$HOME/.bashrc"
create_symlink "$DOTFILES_DIR/bashrc_aliases" "$HOME/.bashrc_aliases"

echo ""
echo -e "${GREEN}✅ Installation complete!${NC}"
echo ""
echo "📝 Next steps:"
echo "  1. Reload Hyprland: hyprctl reload"
echo "  2. Reload shell: source ~/.bashrc"
echo "  3. Restart Waybar: killall waybar && waybar &"
echo ""
echo "🎨 Enjoy your Tokyo Night setup!"

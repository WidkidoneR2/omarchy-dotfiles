# Changelog

All notable changes to this dotfiles repository will be documented in this file.

## [1.0.0] - 2025-11-04

### Added
- Initial release of Omarchy Tokyo Night dotfiles
- Hyprland configuration with 7 config files
- Waybar configuration with Tokyo Night theme
- Alacritty terminal configuration
- LazyVim cheat sheet
- Bash configuration with 158 custom aliases
- Modern CLI tools integration (exa, bat, fd, fzf)
- Clipboard manager (cliphist)
- Screenshot functionality (grim + slurp + swappy)

### Security Features
- Full disk encryption (LUKS2)
- Mullvad VPN with WireGuard split tunneling
- fail2ban intrusion prevention
- DNSOverTLS with Quad9
- UFW firewall configured
- Auto-lock after 5 minutes

### Workspace Organization
- Workspace 1: Terminals
- Workspace 2: Editors (VSCode, Neovim)
- Workspace 3: File Managers
- Workspace 4: Browser
- Workspace 5: Communication (Signal, Discord)

---

## [Unreleased]

### Planned Enhancements
- Visual effects (blur, shadows, animations)
- Install script for easy deployment
- Machine-specific override system
- Additional keybindings
- Theme variations

## [1.6] - 2025-11-05

### Added
- Advanced workspace navigation keybinds (Page Up/Down, brackets, scratchpad)
- Comprehensive Git aliases and shortcuts
- Git configuration file with Tokyo Night colors
- Quick dotfiles management commands (dotsave, dotpull)
- Timeshift backup system with automatic daily/weekly snapshots
- Tokyo Night GTK theme for Nautilus
- Papirus Dark icon theme

### Enhanced
- Expanded Git section in bashrc_aliases with 30+ new shortcuts
- LazyGit integration with shortcuts
- Better log formatting (gll command)
- Branch management shortcuts

### System
- Configured Timeshift for BTRFS snapshots
- Set up automatic backup schedule (2 AM daily, Sunday weekly)
- Installed and configured GTK theming for file manager

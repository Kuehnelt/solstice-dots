<div align="center">
    <h1>【 Solstice Dots 】</h1>
    <h3></h3>
</div>

# Description

Those are my personal dotfiles for dailydriving in Fedora KDE. Most of it was inspirde from a mix of [Pazl27](https://github.com/Pazl27/dotfiles/tree/master) and [Emmale64](https://www.reddit.com/user/Emmale64/) configs. Everything is Catppuccin Mocha themed, with a heavy focus on CLI tools and easy of use. This repository contains: general configs for KDE and other applications, my custom shortcuts and aliases, my keyboard mods with keyd.

# Preview

# Used applications

- Lazyvim
- Lazygit
- Rofi
- N3
- Taskwarrior
- Glow

# KDE Configs

- Wallpapers: in ./walls-catppuccin-mocha/
- Color Theme: Catppuccin Mocha Red
- Plasma Style: Amethyst
- Icon Theme: Yet Another Monochrome Icon Set for KDE Plasma
- Cursor: Catppuccin Red default
- Font: Karla and Fira Code
- Desktop Effects:
  - Better Blur
  - Geometry Change
  - Rounded Corners (15pt, 3pt borders)
  - Aura Glow
- Window Rules:
  - No title bars
  - 85% Opacity for innactive Windows
  - 90% Opacity for active Windows
- KWin Scripts:
  - Full Opacity Fullscreen
  - Krohnkite
- Widgets:
  - Panel: .config/plasma-org.kde.plasma.desktop-appletsrc
  - Panel Colorizer: Transparent preset
  - Wallpaper Effects: Rounded borders, 15pts. Gaps: 32 top and bottom, 12 left and right, #1e1e2e Color

# Keyboard Keyd Mods

Most of it is set as a alternate layer set to AltGr, mostly for those symbols i most frequently use in my day to day writing.

   <img src="./screenshots/keyboard.png">

# Shortcuts and Aliases

## 0. Custom Shortcuts

| Shortcut                                           | Action Description                              |
| -------------------------------------------------- | ----------------------------------------------- |
| <kbd>Super</kbd> + <kbd>T</kbd>                    | Open terminal (`kitty`)                         |
| <kbd>Super</kbd> + <kbd>Q</kbd>                    | Kill the active window                          |
| <kbd>Super</kbd> + <kbd>M</kbd>                    | Exit Hyprland session                           |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>E</kbd> | Open file manager (`nautilus`)                  |
| <kbd>Super</kbd> + <kbd>E</kbd>                    | Launch terminal file manager (`yazi.sh`)        |
| <kbd>Super</kbd> + <kbd>B</kbd>                    | Open browser (`zen-browser`)                    |
| <kbd>Super</kbd> + <kbd>V</kbd>                    | Toggle floating mode                            |
| <kbd>Super</kbd> + <kbd>Space</kbd>                | Open app launcher (`rofi -show drun`)           |
| <kbd>Super</kbd> + <kbd>F</kbd>                    | Toggle fullscreen                               |
| <kbd>Super</kbd> + <kbd>D</kbd>                    | Toggle split layout (dwindle only)              |
| <kbd>Super</kbd> + <kbd>N</kbd>                    | Open terminal with notes (`open_notes.sh`)      |
| <kbd>Super</kbd> + <kbd>W</kbd>                    | Open WiFi selector (`rofi/wifi.sh`)             |
| <kbd>Super</kbd> + <kbd>G</kbd>                    | Switch wallpaper (`rofi/wallpaper_switcher.sh`) |
| <kbd>Super</kbd> + <kbd>A</kbd>                    | Launch AI assistant (`askai.sh`)                |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>S</kbd> | Take screenshot (`snapshot.sh`)                 |
| <kbd>Super</kbd> + <kbd>I</kbd>                    | Open logout screen (`wlogout`)                  |
| <kbd>Super</kbd> + <kbd>P</kbd>                    | Open Install manager (`rofi/list-installer.sh`) |
| <kbd>Super</kbd> + <kbd>R</kbd>                    | Open Repository list (`rofi/repo-rofi.sh`)      |

## 1. System & Package Management

Commands for system updates and maintenance.

| Alias      | Command                | Description                                       |
| :--------- | :--------------------- | :------------------------------------------------ |
| `update`   | `sudo dnf upgrade -y`  | Updates all system packages on Fedora (auto-yes). |
| `install`  | `sudo dnf install`     | Installs a new package using DNF.                 |
| `fpupdate` | `flatpak update`       | Updates all Flatpak applications.                 |
| `c`        | `clear`                | Clears the terminal screen.                       |
| `reboot`   | `sudo reboot`          | Reboots the system.                               |
| `shutdown` | `sudo shutdown -h now` | Shuts down the system immediately.                |

---

## 2. File System Navigation

Shortcuts for moving around the file system more efficiently.

| Alias/Function | Command                            | Description                                                |
| :------------- | :--------------------------------- | :--------------------------------------------------------- |
| `..`           | `cd ..`                            | Go up one directory.                                       |
| `...`          | `cd ../..`                         | Go up two directories.                                     |
| `....`         | `cd ../../..`                      | Go up three directories.                                   |
| `cd`           | `z`                                | Uses **zoxide** for intelligent, fuzzy directory jumping.  |
| `mkcd <dir>`   | `mkdir -p "$argv"; and cd "$argv"` | Creates a new directory and immediately navigates into it. |

---

## 3. Git Workflow

Aliases to speed up common Git operations.

| Alias/Function    | Command                                      | Description                                                            |
| :---------------- | :------------------------------------------- | :--------------------------------------------------------------------- |
| `gs`              | `git status`                                 | Shows the current status of the repository.                            |
| `ga`              | `git add .`                                  | Stages all new and modified files in the current directory.            |
| `gp`              | `git push`                                   | Pushes committed changes to the remote repository.                     |
| `gd`              | `git diff`                                   | Shows the differences between files.                                   |
| `gl`              | `git log --oneline --graph --decorate`       | Displays a compact and graphical commit history.                       |
| `gpush <message>` | `git add .; git commit -m "$argv"; git push` | A function to add, commit, and push all changes with a single command. |

---

## 4. Power User & Workflow Integrations

Commands that combine multiple tools for a powerful workflow.

| Alias | Command                           | Description                                                                 |
| :---- | :-------------------------------- | :-------------------------------------------------------------------------- |
| `fn`  | `nvim (fd --type f \| fzf)`       | **F**ind **N**vim: Finds a file with `fd` and `fzf` and opens it in Neovim. |
| `pf`  | `fd --type f \| fzf \| xargs bat` | **P**review **F**ile: Finds a file and previews its contents using `bat`.   |
| `efc` | `nvim ~/.config/fish/config.fish` | **E**dit **F**ish **C**onfig: Quickly open the fish config file in Neovim.  |
| `enc` | `nvim ~/.config/nvim/init.lua`    | **E**dit **N**eovim **C**onfig: Quickly open the Neovim config file.        |
| `ekc` | `nvim ~/.config/kitty/kitty.conf` | **E**dit **K**itty **C**onfig: Quickly open the Kitty terminal config file. |

---

## 5. Modern CLI Tool Replacements

| Alias | Replaces | Command                  | Description                                              |
| :---- | :------- | :----------------------- | :------------------------------------------------------- |
| `ls`  | `ls`     | `eza --icons`            | Lists directory contents with file-specific icons.       |
| `ll`  | `ls -l`  | `eza -lh --git --header` | Long, human-readable format with Git status.             |
| `lt`  | `tree`   | `eza --tree --level=2`   | Displays directory contents as a tree (2 levels deep).   |
| `cat` | `cat`    | `bat --paging=never`     | Displays file contents with syntax highlighting (`bat`). |

---

## 6. `nnn` File Manager Configuration

| Command        | Description                                                                                                              |
| :------------- | :----------------------------------------------------------------------------------------------------------------------- |
| `nnn`          | Alias for `nnn -P p`, which starts `nnn` with the `preview-tui` plugin active.                                           |
| `n` (Function) | A wrapper function that allows you to quit `nnn` and have your shell automatically `cd` into the directory you were last |

---

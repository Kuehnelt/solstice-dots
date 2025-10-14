<div align="center">
    <h1>Solstice Dots</h1>
    <h3></h3>
</div>

# Description

Those are my personal dotfiles for dailydriving in Fedora KDE. Most of it was inspirde from a mix of [Pazl27](https://github.com/Pazl27/dotfiles/tree/master) and [Emmale64](https://www.reddit.com/r/unixporn/comments/1o4lofv/kde_who_needs_hyprland/) configs. Everything is Catppuccin Mocha themed, with a heavy focus on CLI tools and easy of use. This repository contains: general configs for KDE and other applications, my custom shortcuts and aliases, my keyboard mods with keyd.

# Preview

# Used applications

- Lazyvim
- Lazygit
- Rofi
- N3
- Taskwarrior
- Glow

# Themes & Configs

- Wallpapers: in ./walls-catppuccin-mocha/
- Color Theme: [Catppuccin Mocha Red](https://github.com/catppuccin/kde)
- Plasma Style: [Amethyst Haze](https://store.kde.org/p/2218601)
- Kvantum Theme: [Catppuccin Mocha Red](https://github.com/catppuccin/Kvantum)
- Lockscreen: xxxxxxxxxxxxxxxxxxx
- Icon Theme: [Yet Another Monochrome Icon Set for KDE Plasma](https://store.kde.org/p/2303161)
- Font: Karla and Fira Code
- Desktop Effects:
  - [Better Blur](https://github.com/taj-ny/kwin-effects-forceblur)
  - [Geometry Change](https://store.kde.org/p/2136283)
  - [Rounded Corners (15pt, 3pt borders)](https://github.com/matinlotfali/KDE-Rounded-Corners)
  - [Aura Glow](https://github.com/Schneegans/Burn-My-Windows)
- Window Rules:
  - No title bars
  - 85% Opacity for innactive Windows
  - 90% Opacity for active Windows
- KWin Scripts:
  - [Full Opacity Fullscreen](https://store.kde.org/p/2316974)
  - [Krohnkite](https://github.com/anametologin/krohnkite)
- Widgets:
  - Panel configs: .config/plasma-org.kde.plasma.desktop-appletsrc
  - [Panel Colorizer](https://github.com/luisbocanegra/plasma-panel-colorizer): Transparent preset
  - [Wallpaper Effects](https://github.com/luisbocanegra/plasma-wallpaper-effects): Rounded borders, 15pts. Gaps: 32 top and bottom, 12 left and right, #1e1e2e Color.
- [Rofi](https://github.com/catppuccin/rofi): Catppuccin Mocha Theme
- [Kitty](https://github.com/catppuccin/kitty): Catppuccin Mocha Theme
- [Fish](https://github.com/catppuccin/fish):Catppuccin Mocha Theme
- Starship: Slightly modified [Greed-d Simple Catppuccin Prompt](https://github.com/catppuccin/starship/discussions/18)
- Nvim:
  - [Lazyvim](https://github.com/LazyVim/LazyVim)
  - [Catppuccin Theme](https://github.com/catppuccin/nvim)
  - [Obsidian Plugin](https://github.com/obsidian-nvim/obsidian.nvim)
- Obsidian: [AnuPpuccin](https://github.com/AnubisNekhet/anuppuccin)
- Spotify: [Spicetify Cattpuccin Mocha Theme](https://github.com/catppuccin/spicetify)
- Zen Browser: [Cattpuccin Theme](https://github.com/catppuccin/zen-browser)

# Keyboard Keyd Mods

Most of it is set as a alternate layer set to AltGr, mostly for those symbols I most frequently use in my day to day writing.

   <img src="./screenshots/keyboard.png">

# Shortcuts and Aliases

## 0. Custom Shortcuts

| Shortcut                                                              | Action Description                 |
| --------------------------------------------------------------------- | ---------------------------------- |
| <kbd>Super</kbd>                                                      | Launchs Rofi                       |
| <kbd>Super</kbd> + <kbd>T</kbd>                                       | Launchs Terminal (`kitty`)         |
| <kbd>Super</kbd> + <kbd>Z</kbd>                                       | Launchs Zen Browser                |
| <kbd>Super</kbd> + <kbd>E</kbd>                                       | Laucnhs File Explorer              |
| <kbd>Super</kbd> + <kbd>S</kbd>                                       | Launchs Spotify                    |
| <kbd>Super</kbd> + <kbd>O</kbd>                                       | Launchs Obsidian                   |
| <kbd>Super</kbd> + <kbd>R</kbd>                                       | Launchs Okular                     |
| <kbd>Super</kbd> + <kbd>W</kbd>                                       | Toogles Overview                   |
| <kbd>Super</kbd> + <kbd>G</kbd>                                       | Toogles Overview (grade)           |
| <kbd>Super</kbd> + <kbd>Q</kbd>                                       | Closes Window                      |
| <kbd>Super</kbd> + <kbd>F</kbd>                                       | Toogles Floatting Window           |
| <kbd>Super</kbd> + <kbd>J/H/K/L</kbd>                                 | Changes Window Focus               |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>J/H/L/K</kbd>               | Changes Window Size                |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>J/H/L/K</kbd>              | Move Window                        |
| <kbd>Super</kbd> + <kbd>Tab</kbd>                                     | Minimize Window                    |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>J/H/L/K</kbd>                | Changes Screen Focus               |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>H/L</kbd> | Moves Window to Screen             |
| <kbd>Ctrl</kbd> + <kbd>,/.</kbd>                                      | Changes to next/previous V-Desktop |
| <kbd>Ctrk</kbd> + <kbd>1/2/3/4/5</kbd>                                | Changes to numbered V-Desktop      |

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

| Alias/Function | Command                            | Description                                                                 |
| :------------- | :--------------------------------- | :-------------------------------------------------------------------------- |
| `..`           | `cd ..`                            | Go up one directory.                                                        |
| `...`          | `cd ../..`                         | Go up two directories.                                                      |
| `....`         | `cd ../../..`                      | Go up three directories.                                                    |
| `cd`           | `z`                                | Uses **zoxide** for intelligent, fuzzy directory jumping.                   |
| `mkcd <dir>`   | `mkdir -p "$argv"; and cd "$argv"` | Creates a new directory and immediately navigates into it.                  |
| `ls`           | `eza --icons`                      | Lists directory contents with file-specific icons.                          |
| `ll`           | `eza -lh --git --header`           | Long, human-readable format with Git status.                                |
| `lt`           | `eza --tree --level=2`             | Displays directory contents as a tree (2 levels deep).                      |
| `cat`          | `bat --paging=never`               | Displays file contents with syntax highlighting (`bat`).                    |
| `v`            | `nvim`                             | Runs Nvim                                                                   |
| `fn`           | `nvim (fd --type f \| fzf)`        | **F**ind **N**vim: Finds a file with `fd` and `fzf` and opens it in Neovim. |
| `pf`           | `fd --type f \| fzf \| xargs bat`  | **P**review **F**ile: Finds a file and previews its contents using `bat`.   |
| `efc`          | `nvim ~/.config/fish/config.fish`  | **E**dit **F**ish **C**onfig: Quickly open the fish config file in Neovim.  |
| `enc`          | `nvim ~/.config/nvim/init.lua`     | **E**dit **N**eovim **C**onfig: Quickly open the Neovim config file.        |
| `ekc`          | `nvim ~/.config/kitty/kitty.conf`  | **E**dit **K**itty **C**onfig: Quickly open the Kitty terminal config file. |

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

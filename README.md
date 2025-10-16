<div align="center">
    <img src="./.config/rofi/girl-3.png">
    <h1>Solstice Dots</h1>
    <h3></h3>
</div>

<div align="center">
<p>
<a href="https://github.com/Kuehnelt/solstice-dots/stargazers"><img src="https://img.shields.io/github/stars/Kuehnelt/solstice-dots?style=for-the-badge&logo=starship&color=89b4fa&logoColor=89b4fa&labelColor=11111b"  alt="stars"></a>&nbsp;&nbsp;
<a href="https://github.com/Kuehnelt/solstice-dots/forks"><img src="https://img.shields.io/github/forks/Kuehnelt/solstice-dots?style=for-the-badge&logo=appveyor&logoColor=a6e3a1&label=Forks&labelColor=11111b&color=a6e3a1" alt="forks"></a>&nbsp;&nbsp;
<a href="https://github.com/Kuehnelt/solstice-dots/commits/master/"><img src="https://img.shields.io/github/last-commit/Kuehnelt/solstice-dots?style=for-the-badge&logo=github&logoColor=cba6f7&label=Last%20Commit&labelColor=11111b&color=cba6f7" alt="last commit"></a>&nbsp;&nbsp;
<a href="https://github.com/Kuehnelt/solstice-dots/blob/master/LICENSE"><img src="https://img.shields.io/github/license/Kuehnelt/solstice-dots?style=for-the-badge&color=f38ba8&logoColor=f38ba8&labelColor=11111b" alt="license"></a>&nbsp;&nbsp;
</p>
</div>

# Description

These are my personal dotfiles for daily driving Fedora KDE. This setup is a bit of a Frankenstein's monster, with some original work done by me. Most of it was inspired by a mix of [Pazl27](https://github.com/Pazl27/dotfiles/tree/master)'s and [Emmale64](https://www.reddit.com/r/unixporn/comments/1o4lofv/kde_who_needs_hyprland/)'s dots, and many of the configs are just slightly tweaked versions from the official [Catppuccin](https://catppuccin.com/) repositories.

Everything is themed with Catppuccin Mocha, with a heavy focus on CLI tools and ease of use.

This repository contains:

    General configs for KDE and other applications

    My custom shortcuts and aliases

    My keyboard mods using keyd

# Preview

<img src="./screnshots/screen1.png">

<img src="./screnshots/screen2.png">

<img src="./screnshots/screen3.png">

<img src="./screnshots/rofi.png">

<img src="./screnshots/obsidian.png">

<img src="./screnshots/apps.png">

# Themes & Configs

- Wallpapers: filtered from [Orangci collection](https://github.com/orangci/walls-catppuccin-mocha) in ./walls-catppuccin-mocha/
- Color Theme: [Catppuccin Mocha Red](https://github.com/catppuccin/kde)
- Plasma Style: [Amethyst Haze](https://store.kde.org/p/2218601)
- Kvantum Theme: [Catppuccin Mocha Red](https://github.com/catppuccin/Kvantum)
- Lockscreen: [SDDM Cattpuccin Mocha Red](https://github.com/catppuccin/sddm)
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
  - [Panel Colorizer](https://github.com/luisbocanegra/plasma-panel-colorizer): Transparent preset
  - [Wallpaper Effects](https://github.com/luisbocanegra/plasma-wallpaper-effects): Rounded borders, 15pts. Gaps: 32 top and bottom, 12 left and right, #1e1e2e Color.
- [Rofi](https://github.com/catppuccin/rofi): Catppuccin Mocha Theme with some inspiration taken from [here](https://github.com/adi1090x/rofi/blob/master/previews/launchers/type-7/3.png)
- [Kitty](https://github.com/catppuccin/kitty): Catppuccin Mocha Theme
- [Fish](https://github.com/catppuccin/fish):Catppuccin Mocha Theme
- Starship: Initially inspired from [Greed-d Simple Catppuccin Prompt](https://github.com/catppuccin/starship/discussions/18)
- Nvim:
  - [Lazyvim](https://github.com/LazyVim/LazyVim)
  - [Catppuccin Theme](https://github.com/catppuccin/nvim)
  - [Obsidian Plugin](https://github.com/obsidian-nvim/obsidian.nvim)
- Obsidian: [AnuPpuccin](https://github.com/AnubisNekhet/anuppuccin)
- Glow: [Catppuccin Mocha](https://github.com/catppuccin/glamour)
- Spotify: [Spicetify Cattpuccin Mocha Theme](https://github.com/catppuccin/spicetify)
- Cava: [Cattpuccin Theme](https://github.com/catppuccin/cava/tree/main)
- Zen Browser: [Cattpuccin Theme](https://github.com/catppuccin/zen-browser)

# Keyboard Keyd Mods

Most of this configuration is an alternate keyboard layer mapped to the <kbd>AltGr</kbd> key. This provides easy access to the symbols I use most frequently in my daily writing.

   <img src="./screnshots/keyboard.png">

# Shortcuts and Aliases/Abbreviations

## 0. Custom Shortcuts

| Shortcut                                                              | Action Description                        |
| --------------------------------------------------------------------- | ----------------------------------------- |
| <kbd>Super</kbd>                                                      | Launches Rofi                             |
| <kbd>Super</kbd> + <kbd>T</kbd>                                       | Launches Terminal (`kitty`)               |
| <kbd>Super</kbd> + <kbd>Z</kbd>                                       | Launches Zen Browser                      |
| <kbd>Super</kbd> + <kbd>E</kbd>                                       | Launches File Explorer                    |
| <kbd>Super</kbd> + <kbd>S</kbd>                                       | Launches Spotify                          |
| <kbd>Super</kbd> + <kbd>O</kbd>                                       | Launches Obsidian                         |
| <kbd>Super</kbd> + <kbd>R</kbd>                                       | Launches Okular                           |
| <kbd>Super</kbd> + <kbd>W</kbd>                                       | Toogles Overview                          |
| <kbd>Super</kbd> + <kbd>G</kbd>                                       | Toogles Overview (grade)                  |
| <kbd>Super</kbd> + <kbd>Q</kbd>                                       | Closes Window                             |
| <kbd>Super</kbd> + <kbd>F</kbd>                                       | Toogles Floating Window                   |
| <kbd>Super</kbd> + <kbd>H/J/K/L</kbd>                                 | Changes Window Focus                      |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>H/J/K/L</kbd>               | Changes Window Size                       |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>H/J/K/L</kbd>              | Moves Window                              |
| <kbd>Super</kbd> + <kbd>Tab</kbd>                                     | Minimizes Window                          |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>H/J/K/L</kbd>                | Changes Screen Focus                      |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>H/L</kbd> | Moves Window to next/previous Screen      |
| <kbd>Ctrl</kbd> + <kbd>,/.</kbd>                                      | Switches to next/previous Virtual Desktop |
| <kbd>Ctrk</kbd> + <kbd>1/2/3/4/5</kbd>                                | Switches to a numbered Virtual Desktop    |

## 1. System & Package Management

Commands for system updates and maintenance.

| Alias/Abbr | Command                |
| :--------- | :--------------------- |
| `dup`      | `sudo dnf update -y`   | 
| `din`      | `sudo dnf install`     | 
| `dre`      | `sudo dnf remove`      |
| `fpu`      | `flatpak update -y`    |
| `fpi`      | `flatpak install`      |
| `fpr`      | `flatpak remove`       |
| `c`        | `clear`                |
| `re`       | `sudo reboot`          |
| `sd`       | `sudo shutdown -h now` |

---

## 2. File System Navigation & Utilities

| Alias/Abbr     | Command                            | 
| :------------- | :--------------------------------- | 
| `y`            | `yazi`                             |
| `..`           | `cd ..`                            | 
| `...`          | `cd ../..`                         | 
| `....`         | `cd ../../..`                      |
| `mv`           | `mv -v`                            |
| `mvd`          | `mv -vr`                           |
| `rm`           | `rm -v`                            |
| `rmd`          | `rm -vr`                           |
| `cp`           | `cp -v`                            |
| `cpd`          | `cp -vr`                           |
| `cd`           | `z`                                | 
| `mkcd <dir>`   | `mkdir -p "$argv"; and cd "$argv"` | 
| `ls`           | `eza -F --color=always --icons=always --group-directories-first`                          | 
| `ll`           | `eza -F -l -h -m -u -U --color=always --icons=always --group-directories-first`           | 
| `lt`           | `eza -F -T --level=3 --color=always --icons=always --group-directories-first`             | 
| `la`           | `eza -F -a --color=always --icons=always --group-directories-first`                       |
| `cat`          | `bat --wrap auto -n -P`            | 
| `v`            | `nvim`                             | 
| `vi`           | `nvim`                             |
| `fn`           | `nvim (fd --type f \| fzf)`        | 
| `s/sr/search`  | `batgrep "$argv" $(rg --files | fzf) -P`   |
| `efc`          | `nvim ~/.config/fish/conf.d/aliases.fish`  | 
| `enc`          | `nvim ~/.config/nvim/init.lua`     | 
| `ekc`          | `nvim ~/.config/kitty/kitty.conf`  | 

---

## 3. Git Workflow

| Alias/Abbr        | Command                                      | 
| :---------------- | :------------------------------------------- | 
| `gs`              | `git status`                                 | 
| `ga`              | `git add`                                    |
| `gc`              | `git commit`                                 |
| `gps`             | `git push`                                   |
| `gpl`             | `git pull`                                   | 
| `gd`              | `git diff`                                   | 
| `gl`              | `git log --oneline --graph --decorate`       | 
| `gpush <message>` | `git add .; git commit -m "$argv"; git push` | 

---

# Solstice Dots

My dotfiles

## Main CLI Tools

- Lazyvim
- Lazygit
- N3

- Taskwarrior

- Glow
- Zoxide
- Eza
- Bat
- fzf

## KDE Configs

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
  - Full Opaxity Fullscreen
  - Krohnkite
- Widgets:
  - Panel: .config/plasma-org.kde.plasma.desktop-appletsrc
  - Panel Colorizer: Transparent preset
  - Wallpaper Effects: Rounded borders, 15pts. Gaps: 32 top and bottom, 12 left and right, #1e1e2e Color

## Keyboard Keyd Mods

### Modifier Behaviors

| Key            | Behavior (Tap)                            | Behavior (Hold)            |
| :------------- | :---------------------------------------- | :------------------------- |
| **`capslock`** | Sends `Escape` (`esc`)                    | Acts as `Control` (`ctrl`) |
| **`leftalt`**  | Sends `Backspace`                         | Acts as `Alt`              |
| **`esc`**      | The physical `esc` key is now `capslock`. | (no hold function)         |

---

## 2. Right Alt (`altgr`) Layer Keymaps

### Homerow

| Key Combination           | Outputs Character     | Original Command      |
| :------------------------ | :-------------------- | :-------------------- |
| **`Right Alt`** + **`a`** | `@`                   | `S-2`                 |
| **`Right Alt`** + **`s`** | `!`                   | `S-1`                 |
| **`Right Alt`** + **`d`** | _`?`_                 | `S-ro` (non-standard) |
| **`Right Alt`** + **`f`** | `:`                   | `S-/`                 |
| **`Right Alt`** + **`g`** | `0`                   | `0`                   |
| **`Right Alt`** + **`h`** | `$`                   | `S-4`                 |
| **`Right Alt`** + **`j`** | `''` (grave/backtick) | `grave`               |
| **`Right Alt`** + **`k`** | `"` (tilde)           | `S-grave`             |
| **`Right Alt`** + **`l`** | _`«`_ (`AltGr`+`z`)   | `G-z`                 |
| **`Right Alt`** + **`;`** | _`»`_ (`AltGr`+`x`)   | `G-x`                 |

### Top Row

| Key Combination           | Outputs Character   | Original Command |
| :------------------------ | :------------------ | :--------------- |
| **`Right Alt`** + **`w`** | `(`                 | `S-9`            |
| **`Right Alt`** + **`e`** | _`°`_ (`AltGr`+`e`) | `G-e`            |
| **`Right Alt`** + **`r`** | `_` (underscore)    | `S--`            |
| **`Right Alt`** + **`u`** | _`§`_ (`AltGr`+`=`) | `G-=`            |
| **`Right Alt`** + **`i`** | _`ª`_ (`AltGr`+`]`) | `G-]`            |
| **`Right Alt`** + **`o`** | `)`                 | `S-0`            |

### Bottom Row

| Key Combination           | Outputs Character | Original Command |
| :------------------------ | :---------------- | :--------------- |
| **`Right Alt`** + **`v`** | `#`               | `S-3`            |
| **`Right Alt`** + **`n`** | `*`               | `S-8`            |

---

## 3. Miscellaneous Remaps

| Key Combination       | Outputs Character | Original Command |
| :-------------------- | :---------------- | :--------------- |
| **`Shift`** + **`;`** | `?`               | `S-/`            |

## Shortcuts and Aliases

### 1. System & Package Management

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

### 2. File System Navigation

Shortcuts for moving around the file system more efficiently.

| Alias/Function | Command                            | Description                                                |
| :------------- | :--------------------------------- | :--------------------------------------------------------- |
| `..`           | `cd ..`                            | Go up one directory.                                       |
| `...`          | `cd ../..`                         | Go up two directories.                                     |
| `....`         | `cd ../../..`                      | Go up three directories.                                   |
| `cd`           | `z`                                | Uses **zoxide** for intelligent, fuzzy directory jumping.  |
| `mkcd <dir>`   | `mkdir -p "$argv"; and cd "$argv"` | Creates a new directory and immediately navigates into it. |

---

### 3. Git Workflow

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

### 4. Power User & Workflow Integrations

Commands that combine multiple tools for a powerful workflow.

| Alias | Command                           | Description                                                                 |
| :---- | :-------------------------------- | :-------------------------------------------------------------------------- |
| `fn`  | `nvim (fd --type f \| fzf)`       | **F**ind **N**vim: Finds a file with `fd` and `fzf` and opens it in Neovim. |
| `pf`  | `fd --type f \| fzf \| xargs bat` | **P**review **F**ile: Finds a file and previews its contents using `bat`.   |
| `efc` | `nvim ~/.config/fish/config.fish` | **E**dit **F**ish **C**onfig: Quickly open the fish config file in Neovim.  |
| `enc` | `nvim ~/.config/nvim/init.lua`    | **E**dit **N**eovim **C**onfig: Quickly open the Neovim config file.        |
| `ekc` | `nvim ~/.config/kitty/kitty.conf` | **E**dit **K**itty **C**onfig: Quickly open the Kitty terminal config file. |

---

### 5. Modern CLI Tool Replacements

| Alias | Replaces | Command                  | Description                                              |
| :---- | :------- | :----------------------- | :------------------------------------------------------- |
| `ls`  | `ls`     | `eza --icons`            | Lists directory contents with file-specific icons.       |
| `ll`  | `ls -l`  | `eza -lh --git --header` | Long, human-readable format with Git status.             |
| `lt`  | `tree`   | `eza --tree --level=2`   | Displays directory contents as a tree (2 levels deep).   |
| `cat` | `cat`    | `bat --paging=never`     | Displays file contents with syntax highlighting (`bat`). |

---

### 6. `nnn` File Manager Configuration

| Command        | Description                                                                                                              |
| :------------- | :----------------------------------------------------------------------------------------------------------------------- |
| `nnn`          | Alias for `nnn -P p`, which starts `nnn` with the `preview-tui` plugin active.                                           |
| `n` (Function) | A wrapper function that allows you to quit `nnn` and have your shell automatically `cd` into the directory you were last |

---

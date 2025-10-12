# -------------------------------------------
# -- ALIASES FOR A MORE EFFICIENT WORKFLOW --
# -------------------------------------------

# -- 1. System & Package Management --
# Your requested aliases, with improvements
alias update='sudo dnf upgrade -y' # '-y' auto-confirms, making it faster
alias install='sudo dnf install'
alias fpupdate='flatpak update'

# General system utilities
alias c='clear'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'

alias typioca='~/typioca/execs/typioca'
# -- 2. Navigation --
# Quick directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd='z'
# Create a directory and cd into it
function mkcd
    mkdir -p "$argv"; and cd "$argv"
end

# -- 3. Git Workflow --
# Common git commands, made short and sweet
alias gs='git status'
alias ga='git add .'
alias gp='git push'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate' # A much prettier git log

# In ~/.config/fish/config.fish

# Function to quickly add, commit, and push all changes in one command
function gpush
    # Stage all changes in the current directory
    git add .

    # Commit the changes with the message you provide
    git commit -m "$argv"

    # Push the commit to your remote repository (e.g., GitHub)
    git push
end

# -- 4. Power User & Workflow Integration --
# These aliases combine your tools in powerful ways

# Your requested 'find' alias, enhanced to open the selection in Neovim
# 'fn' -> find a file and open it in nvim
alias fn='nvim (fd --type f | fzf)'

# Preview a file selected with fzf using bat
# 'pf' -> preview file
alias pf='fd --type f | fzf | xargs bat'

# Quickly edit your most important config files
alias efc='nvim ~/.config/fish/config.fish' # Edit Fish Config
alias enc='nvim ~/.config/nvim/init.lua' # Edit Neovim Config
alias ekc='nvim ~/.config/kitty/kitty.conf' # Edit Kitty Config

# --- Modern CLI Tool Configuration ---

# Set Neovim as the default editor
set -Ux EDITOR nvim

# eza (replaces ls)
alias ls 'eza --icons'
alias ll 'eza -lh --git --header'
alias lt 'eza --tree --level=2'

# --- nnn Configuration ---

# Defines the plugin shortcuts (like ';p')
set -Ux NNN_PLUG 'f:fzf_preview;o:fzopen;p:preview-tui;d:diffs;v:imgview'

# Tells nnn WHERE to find the plugin scripts
set -Ux NNN_PLUG_PATH ~/.config/nnn/plugins/launch

# Optional: an alias to always start with the preview pane open
alias nnn 'nnn -P p'

# bat (replaces cat)
alias cat 'bat --paging=never'

# zoxide (replaces cd)
zoxide init fish | source

# fzf (for Ctrl+R history search and nnn plugins)
fzf --fish | source

# nnn Environment Variables
set -Ux NNN_PLUG 'f:fzf_preview;o:fzopen;p:preview-tui;d:diffs;v:imgview'
set -Ux NNN_FIFO '/tmp/nnn.fifo'

# Rename this file to match the name of the function
# e.g. ~/.config/fish/functions/n.fish
# or, add the lines to the 'config.fish' file.

function n --wraps nnn --description 'support nnn quit and change directory'
    # Block nesting of nnn in subshells
    if test -n "$NNNLVL" -a "$NNNLVL" -ge 1
        echo "nnn is already running"
        return
    end

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "-x" from both lines below,
    # without changing the paths.
    if test -n "$XDG_CONFIG_HOME"
        set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The command function allows one to alias this function to `nnn` without
    # making an infinitely recursive alias
    command nnn $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm -- $NNN_TMPFILE
    end
end

# ~/.config/fish/config.fish

starship init fish | source

fish_add_path /home/kuehnelt/.spicetify

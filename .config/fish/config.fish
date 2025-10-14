# ===========================================
# -- VARIABLES -- 
# ===========================================
set -gx EDITOR nvim

# -------------------------------------------
# -- ALIASES FOR A MORE EFFICIENT WORKFLOW --
# -------------------------------------------

# -- 1. System & Package Management --
alias update='sudo dnf upgrade -y'
alias install='sudo dnf install'
alias fpupdate='flatpak update'

# General system utilities
alias c='clear'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'
alias typioca='~/typioca/execs/typioca'

# -- 2. Navigation --
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd='z'
function mkcd
    mkdir -p "$argv"; and cd "$argv"
end
alias v='nvim'
alias fn='nvim (fd --type f | fzf)'
alias pf='fd --type f | fzf | xargs bat'
alias efc='nvim ~/.config/fish/config.fish' # Edit Fish Config
alias enc='nvim ~/.config/nvim/init.lua' # Edit Neovim Config
alias ekc='nvim ~/.config/kitty/kitty.conf' # Edit Kitty Config
set -Ux EDITOR nvim
alias ls 'eza --icons'
alias ll 'eza -lh --git --header'
alias lt 'eza --tree --level=2'
alias cat 'bat --paging=never'
zoxide init fish | source

# -- 3. Git Workflow --
alias gs='git status'
alias ga='git add .'
alias gp='git push'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate' # A much prettier git log
function gpush
    git add .
    git commit -m "$argv"
    git push
end

# --- nnn Configuration ---
set -Ux NNN_PLUG 'f:fzf_preview;o:fzopen;p:preview-tui;d:diffs;v:imgview'
set -Ux NNN_PLUG_PATH ~/.config/nnn/plugins/launch
alias nnn 'nnn -P p'
fzf --fish | source
set -Ux NNN_PLUG 'f:fzf_preview;o:fzopen;p:preview-tui;d:diffs;v:imgview'
set -Ux NNN_FIFO '/tmp/nnn.fifo'

function n --wraps nnn --description 'support nnn quit and change directory'
    if test -n "$NNNLVL" -a "$NNNLVL" -ge 1
        echo "nnn is already running"
        return
    end
    if test -n "$XDG_CONFIG_HOME"
        set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end

    command nnn $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm -- $NNN_TMPFILE
    end
end

starship init fish | source

fish_add_path /home/kuehnelt/.spicetify

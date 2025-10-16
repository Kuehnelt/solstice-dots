# System Utilities
abbr y yazi
abbr c clear
abbr re 'sudo reboot'
abbr sd 'sudo shutdown -h now'

abbr dup 'sudo dnf update -y'
abbr din 'sudo dnf install'
abbr dre 'sudo dnf remove'

abbr fpu 'flatpak update -y'
abbr fpi 'flatpak install'
abbr fpr 'flatpak remove'

# Navigation
alias cd='z'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

function mkcd
    mkdir -p "$argv"; and cd "$argv"
end

# Utilities
abbr mv 'mv -v'
abbr mvd 'mv -vr'

abbr rm 'rm -v'
abbr rmd 'rm -vr'

abbr cp 'cp -v'
abbr cpd 'cp -vr'

alias cat='bat --wrap auto -n -P'

alias ls='eza -F --color=always --icons=always --group-directories-first'
alias ll='eza -F -l -h -m -u -U --git --color=always --icons=always --group-directories-first'
alias lt='eza -F -T --level=3 --color=always --icons=always --group-directories-first'
alias la='eza -a -F --color=always --icons=always --group-directories-first'

abbr s search
abbr src search
function search
    batgrep "$argv" $(rg --files | fzf) -P
end

# NVim
abbr v nvim
abbr vi nvim
alias fn='nvim (fd --type f | fzf)'

alias efc='nvim ~/.config/fish/conf.d/aliases.fish'
alias enc='nvim ~/.config/nvim/init.lua'
alias ekc='nvim ~/.config/kitty/kitty.conf'

# Git
abbr gs 'git status'
abbr ga 'git add'
abbr gc 'git commit'
abbr gps 'git push'
abbr gpl 'git pull'
abbr gd 'git diff'
alias gl='git log --oneline --graph --decorate'

function gpush
    git add .
    git commit -m "$argv"
    git push
end

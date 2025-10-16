function backup_dotfiles
    cp -rv ~/.config/fastfetch/ ~/solstice_dots/config/
    cp -rv ~/.config/kitty/ ~/solstice_dots/config/
    cp -rv ~/.config/Kvantum/ ~/solstice_dots/config/
    cp -rv ~/.config/rofi/ ~/solstice_dots/config/
    cp -rv ~/.config/starship.toml ~/solstice_dots/config
    cp -rv ~/.config/glow/ ~/solstice_dots/config/
    cp -rv ~/.config/yazi/ ~/solstice_dots/config/
    cp -rv ~/.config/cava/config ~/solstice_dots/config/cava/
    cp -rv ~/.config/epy/ ~/solstice_dots/config/

    cp -rv ~/.config/nvim/lua/plugins/ ~/solstice_dots/config/nvim/
    cp -rv ~/.config/nvim/init.lua ~/solstice_dots/config/nvim/
    cp -rv ~/.config/nvim/lazyvim.json ~/solstice_dots/config/nvim/

    cp -rv ~/.config/fish/functions/fish_greeting.fish ~/solstice_dots/config/fish/functions/
    cp -rv ~/.config/fish/fish_plugins ~/solstice_dots/config/fish/
    cp -rv ~/.config/fish/config.fish ~/solstice_dots/config/fish/
    cp -rv ~/.config/fish/conf.d/aliases.fish ~/solstice_dots/config/fish/conf.d/
    cp -rv ~/.config/fish/functions/reader.fish ~/solstice_dots/config/fish/functions/
    cp -rv ~/.config/fish/functions/backup_dotfiles.fish ~/solstice_dots/config/fish/functions/

    sudo cp -rv /etc/keyd/default.conf ~/solstice_dots/etc/keyd/

    cd ~/solstice_dots/
end

function fish_greeting
    set_color bryellow
    echo "Welcome back to "(hostname)"!"
    set_color normal

    echo "" # Newline for spacing

    fastfetch

    echo ""
    set_color brred
    fortune ~/.config/fish/functions/my-dra-fortunes.txt
    set_color normal
    echo ""

    echo "Your current tasks are:"
    task next

    echo ""
end

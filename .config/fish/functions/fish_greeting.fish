function fish_greeting
    fastfetch

    echo ""
    set_color brred
    fortune ~/.config/fish/functions/my-dra-fortunes.txt
    set_color normal
    echo ""

    set_color brblue
    echo "Welcome back to "(hostname)"!"
    set_color normal

    echo "Your current tasks are:"
    task next
end

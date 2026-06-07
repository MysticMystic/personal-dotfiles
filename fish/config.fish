if status is-interactive
# Commands to run in interactive sessions can go here
end

if status is-login
    if test (tty) = /dev/tty1
        exec start-hyprland
    end
end
function fish_prompt
    echo "┌「"(whoami)@(prompt_hostname)"」"(prompt_pwd | string replace -r '~' '')
    echo "└──❯ "
end

alias pacman="sudo pacman"
alias clearfetch="clear && fastfetch"
alias blupipes="pipes.sh -t1 -B -c 4 -c 6"
alias blumatrix="unimatrix -c blue"

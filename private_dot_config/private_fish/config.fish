# Commands to run in interactive sessions
if status is-interactive
    # Set no greeting message
    set -gx fish_greeting ""
end

# Shell Variables
#set -gx PATH ~/.local/bin $PATH

if type -q nvim
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    #  set -gx MANPAGER "nvim +Man!"
    alias vimdiff="nvim -d"
end

# Set fish's default web browser
set -x BROWSER (type -p firefox)

# Initialize Starship
$HOME/.local/bin/starship init fish | source

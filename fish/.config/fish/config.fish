# Commands to run in interactive sessions
if status is-interactive
    # Set no greeting message
    set -gx fish_greeting ""
end

# Shell Variables

# Add NPM bin directory to $PATH
set -gx PATH ~/.npm-global/bin $PATH

if type -q nvim
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    #  set -gx MANPAGER "nvim +Man!"
    alias vimdiff="nvim -d"
end

# Source local secrets if the file exists
if test -f ~/.config/fish/local_secrets.fish
    source ~/.config/fish/local_secrets.fish
end

# Set fish's default web browser
set -x BROWSER (type -p firefox)

# Initialize Starship
$HOME/.local/bin/starship init fish | source

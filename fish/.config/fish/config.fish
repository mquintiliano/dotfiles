# Commands to run in interactive sessions
if status is-interactive
    # Set no greeting message
    set -gx fish_greeting ""
end

# Shell Variables

# Set fish's $PATH
# list of additional dirs to be add to fish's PATH
set -l extra_paths ~/.local/bin ~/.npm-global/bin

for p in $extra_paths
    if test -d $p
        fish_add_path -m $p
    end
end

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

# opencode
fish_add_path $HOME/.opencode/bin

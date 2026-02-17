# ~/.bashrc.d/fish-like.bash

# Check if running an interactive session
[[ $- == *i* ]] || return

# History search with up/down arrows
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Tab completion behavior
bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'
bind 'set menu-complete-display-prefix on'
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'

# Directory navigation corrections
shopt -s cdspell
shopt -s dirspell

# History settings
shopt -s histappend
shopt -s cmdhist
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth

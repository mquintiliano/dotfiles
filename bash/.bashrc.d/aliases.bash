### Aliases ###

alias vi='/usr/bin/nvim'
alias upgrade='sudo dnf upgrade --refresh'
alias vpn='nmcli con up São\ Paulo\ \(GRU\) --ask'
alias fpr='flatpak run'

# tmux aliases
alias tm='tmux new -s main'
alias tml='tmux ls'

# Validate YAML files
alias yamlcheck='python -c "import sys, yaml as y; y.safe_load(open(sys.argv[1]))"'

# Neovim upstream alias
alias nvim='NVIM_APPNAME=upstream /opt/nvim-linux-x86_64/bin/nvim'

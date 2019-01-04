# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:/opt/flutter/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

EDITOR='vim'
VAGRANT_HOME=/srv/data/Vagrant.d
VAGRANT_DEFAULT_PROVIDER=libvirt
SUB_USERNAME=rhn-support-marcsilv
export EDITOR VAGRANT_HOME VAGRANT_DEFAULT_PROVIDER SUB_USERNAME TERM 

# User specific aliases and functions
alias tm='tmux new -s main'
alias tml='tmux ls'

## Delete a file securely, first overwritting it using shred
alias srm='shred -n 200 -z -u'

# Validate YAML files
alias yamlcheck='python -c "import sys, yaml as y; y.safe_load(open(sys.argv[1]))"'

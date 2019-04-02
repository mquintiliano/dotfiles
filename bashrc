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

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/marcsilv/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/marcsilv/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/marcsilv/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/marcsilv/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

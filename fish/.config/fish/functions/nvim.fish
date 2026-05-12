function nvim --wraps='NVIM_APPNAME="upstream" /opt/nvim-linux-x86_64/bin/nvim' --description 'alias nvim=NVIM_APPNAME="upstream" /opt/nvim-linux-x86_64/bin/nvim'
    NVIM_APPNAME="nvim-upstream" /opt/nvim-linux-x86_64/bin/nvim $argv
end

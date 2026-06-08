# ==========================================
# 1. HISTORY SETTINGS (Fish-like)
# ==========================================
# Fish keeps a massive, shared history instantly available across tabs
HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

setopt EXTENDED_HISTORY       # Save timestamp and duration of commands
setopt SHARE_HISTORY          # Share history across all active sessions dynamically
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history
setopt HIST_IGNORE_DUPS       # Don't record an entry if it's a duplicate of the last one
setopt HIST_FIND_NO_DUPS      # Do not display a line previously found

# ==========================================
# 2. INTERACTIVE FEATURES & TAB COMPLETION
# ==========================================
# Initialize the completion system
autoload -Uz compinit && compinit

# Fish-like menu selection for completions (arrow keys navigation)
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # Case-insensitive matching

# ==========================================
# 3. FEDORA SYSTEM PLUGINS
# ==========================================
# Source syntax highlighting first, then autosuggestions
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    
    # Fish-like binding: Accept completion suggestion with Right Arrow or Ctrl+F
    bindkey '^[[C' forward-word          # Right Arrow accepts word-by-word
    bindkey '^F' vi-forward-word         # Ctrl+F accepts the entire suggestion
    
    # Change suggestion color to match Fish's muted gray (Fedora default might vary)
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8' 
fi

# ==========================================
# 4. KEY BINDINGS (Up/Down History Search)
# ==========================================
# Fish lets you type a partial command and hit Up/Down to search history.
# Zsh has this built-in via 'history-beginning-search-backward'
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Bind to standard Up/Down arrow keys
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

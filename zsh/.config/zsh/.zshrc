# =====================================================================
#  ~/.zshrc - fish-like zsh setup
#  Plugins: zsh-autosuggestions, zsh-syntax-highlighting, fzf, starship
# =====================================================================

# ---------- History (fish-like: shared, deduped, large) ----------
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt SHARE_HISTORY          # share across terminals
setopt HIST_IGNORE_ALL_DUPS   # no duplicates
setopt HIST_IGNORE_SPACE      # commands starting with a space aren't saved
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY

# ---------- Shell behavior ----------
setopt AUTO_CD                # type a directory name to cd into it
setopt INTERACTIVE_COMMENTS
setopt NO_BEEP

# ---------- Completion (menu, case-insensitive, colored) ----------
# Optional extra completions (requires clone zsh-completions):
# fpath=(~/.zsh/zsh-completions/src $fpath)

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' special-dirs true
zmodload zsh/complist
bindkey -M menuselect '^[[Z' reverse-menu-complete   # Shift-Tab goes back

# ---------- Autosuggestions ----------
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
bindkey '^[[C'    forward-char       # Right arrow accepts suggestion
bindkey '^[[F'    end-of-line        # End accepts suggestion
bindkey '^[[1;5C' forward-word       # Ctrl-Right accepts one word

# ---------- Up/Down: prefix history search (fish behavior) ----------
autoload -U up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# ---------- fzf (Ctrl-R history, Ctrl-T files, Alt-C directories) ----------
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
source <(fzf --zsh)

# ---------- Starship prompt ----------
eval "$(starship init zsh)"

# ---------- Syntax highlighting (MUST be last) ----------
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

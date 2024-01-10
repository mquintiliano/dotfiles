# dot_files

My dotfiles repo managed with [chezmoi](https://github.com/twpayne/chezmoi).

## One-line setup dotfiles

### Install chezmoi and initialize it with my dotfiles from github with a single command (Connects with SSH).
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply --ssh mquintiliano
```


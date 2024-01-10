# dot_files

My dotfiles repo managed with [chezmoi](https://github.com/twpayne/chezmoi).

## One-line setup dotfiles

```bash
# Install chezmoi and initialize it with my dotfiles from github with a single command
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply --ssh mquintiliano
```


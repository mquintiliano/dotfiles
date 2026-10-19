# My dotfiles

```text
 +-+-+-+-+-+-+-+-+-+
 |.|d|o|t|f|i|l|e|s|
 +-+-+-+-+-+-+-+-+-+
```

Personal configuration files for my Linux environment, kept under version
control and installed with [GNU Stow](https://www.gnu.org/software/stow/).

## Usage

Clone this repository into `~/.dotfiles`, then "stow" the packages you want:

```sh
cd ~/.dotfiles
stow bash fish nvim tmux
```

Stow creates symlinks from your home directory into the repository, so editing a file in this repo updates it in place. The included
`stow/.stowrc` handles the common options (`--target=$HOME`,
`--dir=$HOME/.dotfiles`, `--no-folding`), so no extra arguments are needed.

To remove a package's links again, use `stow -D <package>`.

## Packages

| Package | Contents |
| --- | --- |
| `bash` | Bash setup via `~/.bashrc.d` snippets (starship, fzf, zoxide, cargo, npm, editor, aliases, secrets) |
| `containers` | Podman `storage.conf` |
| `fish` | Fish shell config, abbreviations, ssh-agent handling, and custom functions |
| `ghostty` | Ghostty terminal config and Catppuccin themes |
| `git` | Global git config, per-GitLab override, and global gitignore |
| `herdr` | herdr configuration |
| `ipython` | Default IPython profile |
| `markdownlint-cli2` | markdownlint-cli2 configuration |
| `nvim` | Neovim config built on [LazyVim](https://www.lazyvim.org/) (colorschemes, keymaps, tmux integration) |
| `stow` | The `.stowrc` itself |
| `tmux` | tmux config (custom `C-a` prefix, plugins) |
| `zsh` | Zsh config (`~/.zshenv` and `~/.config/zsh`) |

## Local-only files

Machine-specific and private settings are kept out of git via `.gitignore`,
for example:

- `fish/.config/fish/conf.d/secrets.fish`
- `bash/.bashrc.d/*.local.bash`
- `tmux/.config/tmux/plugins/` (tmux plugin manager clones these)

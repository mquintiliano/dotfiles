# Running neovim installed binaries
# Only add if not already in PATH
if [[ ":$PATH:" != *":/opt/nvim-linux-x86_64/bin:"* ]]; then
  export PATH=":/opt/nvim-linux-x86_64/bin:$PATH"
fi

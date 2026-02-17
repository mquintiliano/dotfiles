# Running cargo installed binaries
# Only add if not already in PATH
if [[ ":$PATH:" != *":$HOME/.cargo/bin:"* ]]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

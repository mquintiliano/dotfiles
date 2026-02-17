# Add NPM bin directory to $PATH
# Only add if not already in PATH

if [[ ":$PATH:" != *":$HOME/.npm-global/bin:"* ]]; then
  export PATH="$HOME/.npm-global/bin:$PATH"
fi

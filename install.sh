#!/bin/bash

# Clone TPM if it doesn't exist
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# Link tmux.conf
ln -sf "$(dirname "$(readlink -f "$0")")/tmux.conf" "$HOME/.tmux.conf"

# Source tmux.conf
tmux source-file "$HOME/.tmux.conf" 2>/dev/null || true

# Install plugins
"$HOME/.tmux/plugins/tpm/bin/install_plugins"

echo "Tmux configuration installed successfully!"

#!/usr/bin/env bash
# Bootstrap script for setting up dotfiles and Zsh environment
# Usage: Run from your home directory after cloning dotfiles-examples

set -e

DOTFILES_DIR="$HOME/dotfiles-examples"

# Symlink .zshrc
if [ ! -L "$HOME/.zshrc" ]; then
  ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
  echo "Symlinked .zshrc"
fi

# Create modular config directory if it doesn't exist
mkdir -p "$DOTFILES_DIR/zshrc.d"

# Install Oh-My-Zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh-My-Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true
fi

# Install zsh-autosuggestions
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
fi

# Install zsh-syntax-highlighting
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
fi

echo "Dotfiles and Zsh environment bootstrapped!" 

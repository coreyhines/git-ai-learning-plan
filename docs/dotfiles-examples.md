# Dotfiles Example: Portable Zsh Environment

This guide provides examples and instructions for setting up a portable Zsh environment that you can use across different machines.

## Example Configuration Files

Below are example configuration files to help you get started with a powerful, cross-platform shell setup:

```bash
# Example .zshrc
# Load Oh-My-Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias g="git"
alias gst="git status"
alias gd="git diff"
alias gc="git commit"
alias gp="git push"
```

```bash
# Example bootstrap.sh
#!/bin/bash
set -e

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy config files
cp .zshrc ~/.zshrc
```

```gitignore
# Example .gitignore for dotfiles
.DS_Store
*.swp
*.swo
.env
.env.*
```

## Usage

1. Copy these example files to your dotfiles repository
2. Customize them for your needs
3. Use the bootstrap script to set up a new machine

These examples help you quickly set up a cross-platform, modular, and secure shell environment on any machine.

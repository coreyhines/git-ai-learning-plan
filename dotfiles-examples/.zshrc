# Example .zshrc for a Portable, 10x Engineer Shell
# Inspired by best practices for cross-platform and remote development

# --- OS Detection ---
if [[ "$OSTYPE" == "darwin"* ]]; then
  export OS_TYPE="macos"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export OS_TYPE="linux"
else
  export OS_TYPE="unknown"
fi

# --- SSH Session Detection ---
if [[ -n "$SSH_CONNECTION" ]]; then
  export IS_SSH="1"
else
  export IS_SSH="0"
fi

# --- Modular Config: Source Additional Files ---
DOTFILES_DIR="$HOME/dotfiles-examples"
if [[ -d "$DOTFILES_DIR/zshrc.d" ]]; then
  for config_file in "$DOTFILES_DIR/zshrc.d"/*.zsh; do
    [ -r "$config_file" ] && source "$config_file"
  done
fi

# --- Oh-My-Zsh Setup ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# --- OS-Specific Customizations ---
if [[ "$OS_TYPE" == "macos" ]]; then
  export PATH="/usr/local/bin:$PATH"
  # macOS-specific aliases or functions
elif [[ "$OS_TYPE" == "linux" ]]; then
  export PATH="/usr/bin:$PATH"
  # Linux-specific aliases or functions
fi

# --- SSH-Specific Customizations ---
if [[ "$IS_SSH" == "1" ]]; then
  # Lighter prompt, disable heavy plugins, etc.
  ZSH_THEME="robbyrussell"
  # Example: disable autosuggestions for speed
  plugins=(${plugins[@]/zsh-autosuggestions/})
fi

# --- Local Overrides (not in git) ---
if [[ -f "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

# --- Useful Aliases ---
alias ll='ls -lah'
alias gs='git status'
alias gl='git pull'
alias gp='git push'

# --- End of .zshrc --- 

# Example Dotfiles for a Portable Zsh Environment

This directory contains example dotfiles and scripts to help you set up a powerful, portable Zsh environment across macOS, Linux, and remote SSH sessions.

## Features

- Cross-platform `.zshrc` with OS and SSH detection
- Modular config loading from `zshrc.d/`
- Bootstrap script to symlink `.zshrc` and install Oh-My-Zsh and plugins
- `.gitignore` to keep secrets and local overrides out of version control

## Usage

1. **Clone this directory to your home folder:**

   ```sh
   git clone <repo-url> ~/dotfiles-examples
   cd ~/dotfiles-examples
   ```

2. **Run the bootstrap script:**

   ```sh
   ./bootstrap.sh
   ```

3. **Customize your config:**
   - Add custom plugins, aliases, or functions to `zshrc.d/` as separate `.zsh` files.
   - Place machine- or user-specific secrets in `.zshrc.local` (never commit this file).

## Security Best Practices

- Never commit secrets, API keys, or sensitive info to your dotfiles repo.
- Use `.gitignore` to exclude local overrides and secrets.
- For advanced needs, consider tools like [git-crypt](https://github.com/AGWA/git-crypt) or [sops](https://github.com/mozilla/sops) for encrypted secrets.

## Extending

- Adapt the `.zshrc` and bootstrap script for your own workflow.
- See [chezmoi](https://www.chezmoi.io/) or [yadm](https://yadm.io/) for more advanced dotfile management.

## Inspiration

- This example is inspired by real-world, cross-platform dotfiles setups and best practices.

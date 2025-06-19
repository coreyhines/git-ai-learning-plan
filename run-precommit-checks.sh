#!/usr/bin/env bash
# Run all pre-commit checks locally: markdown auto-fix, lint, and hygiene.
# Usage: ./run-precommit-checks.sh
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to install dependencies
install_deps() {
  if ! command -v uv &> /dev/null; then
    echo -e "${YELLOW}uv not found. Installing uv first...${NC}"
    curl -LsSf https://astral.sh/uv/install.sh | sh
    # Add uv to PATH for this session
    export PATH="$HOME/.cargo/bin:$PATH"
  fi

  if ! command -v pre-commit &> /dev/null; then
    echo -e "${YELLOW}pre-commit not found. Installing...${NC}"
    uv pip install --system pre-commit
  fi

  if ! command -v markdownlint &> /dev/null; then
    echo -e "${YELLOW}markdownlint-cli not found. Installing...${NC}"
    if ! command -v npm &> /dev/null; then
      echo -e "${RED}npm is required to install markdownlint-cli. Please install Node.js first.${NC}"
      exit 1
    fi
    npm install -g markdownlint-cli
  fi
}

# Install dependencies if needed
install_deps

# First, run markdownlint with --fix on all markdown files
echo -e "\n${GREEN}Auto-fixing markdown files...${NC}"
find . -name "*.md" -not -path "*/\.*" -exec markdownlint --fix {} +

# Then run all pre-commit hooks
printf "\n${GREEN}Running pre-commit hooks on all files...${NC}\n"
pre-commit run --all-files || {
  printf "\n${YELLOW}Some files were auto-fixed or still need attention. Please review, stage, and commit any changes.${NC}\n"
  exit 1
}

printf "\n${GREEN}All pre-commit checks passed!${NC}\n"

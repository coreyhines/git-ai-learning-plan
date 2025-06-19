#!/usr/bin/env bash
# Run all pre-commit checks locally: markdown auto-fix, lint, and hygiene.
# Usage: ./run-precommit-checks.sh
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

if ! command -v pre-commit &> /dev/null; then
  echo -e "${YELLOW}pre-commit not found. Installing...${NC}"
  if ! command -v uv &> /dev/null; then
    echo -e "${YELLOW}uv not found. Installing uv first...${NC}"
    curl -LsSf https://astral.sh/uv/install.sh | sh
    # Add uv to PATH for this session
    export PATH="$HOME/.cargo/bin:$PATH"
  fi
  uv pip install pre-commit
fi

printf "\n${GREEN}Running pre-commit hooks on all files...${NC}\n"
pre-commit run --all-files || {
  printf "\n${RED}Some files were auto-fixed or failed checks. Please review, stage, and commit any changes.${NC}\n"
  exit 1
}

printf "\n${GREEN}All pre-commit checks passed!${NC}\n" 

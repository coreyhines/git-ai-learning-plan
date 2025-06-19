# Agentic AI Learning Plan

[![Deploy MkDocs site to GitHub Pages](https://github.com/coreyhines/git-ai-learning-plan/actions/workflows/gh-pages.yml/badge.svg)](https://github.com/coreyhines/git-ai-learning-plan/actions/workflows/gh-pages.yml)

A comprehensive, open-source curriculum and resource set for mastering modern development workflows with agentic AI, Git, and best practices.

> **Note:** Changes are automatically deployed to GitHub Pages when pushed to the `main` branch.

---

## 📖 Documentation Site

All learning paths, guides, and modules are now published as a user-friendly site using [MkDocs Material](https://squidfunk.github.io/mkdocs-material/).

👉 **View the docs:** [https://coreyhines.github.io/git-ai-learning-plan/](https://coreyhines.github.io/git-ai-learning-plan/)

---

## Installation & Setup

This project uses [uv](https://github.com/astral-sh/uv) for fast, reliable Python package management.

1. **Install uv** if you don't have it:
   ```sh
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

2. **Clone and install dependencies:**
   ```sh
   git clone https://github.com/coreyhines/git-ai-learning-plan.git
   cd git-ai-learning-plan
   uv pip install -r requirements.txt
   ```

3. **Install pre-commit hooks:**
   ```sh
   pre-commit install
   ```

4. **Run the docs locally:**
   ```sh
   mkdocs serve
   ```

Visit `http://127.0.0.1:8000` to view the documentation.

---

## Project Structure

- `docs/` – All guides, learning paths, and modules for the MkDocs site
- `dotfiles-examples/` – Example portable shell configs and scripts
- `.github/workflows/` – GitHub Actions workflows (site publishing, etc.)
- `README.md` – Project overview (this file)
- `LICENSE` – MIT License
- `pyproject.toml` – Project configuration and dependencies
- `requirements.txt` – Pinned dependencies for reproducibility

---

## Pre-commit Hooks & Linting

This project uses [pre-commit](https://pre-commit.com/) to enforce Markdown and whitespace standards before every commit.

> **We use [uv](https://github.com/astral-sh/uv) for Python package management.** It's faster and more reliable than raw pip. Always use `uv pip install ...` instead of `pip install ...`.

**To check/fix all files manually:**
```sh
./run-precommit-checks.sh
```

> The CI will also run these checks. Please ensure your commits pass locally to avoid failed builds.

---

## Contributing

Contributions are welcome! Please fork, branch, and submit a pull request. See the docs site for style and structure guidelines.

---

## License

MIT License – see [LICENSE](LICENSE)

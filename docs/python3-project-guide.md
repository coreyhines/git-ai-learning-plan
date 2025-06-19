# Modern Python Project Setup Guide

This guide demonstrates how to set up a modern Python project using best practices and current tooling.

## Project Structure

A well-organized Python project typically follows this structure:

```text
your-project/
├── src/
│   └── your_package/
│       ├── __init__.py
│       └── main.py
├── tests/
│   └── test_basic.py
├── pyproject.toml
├── requirements.txt
├── .pre-commit-config.yaml
└── README.md
```

## Setup Steps

1. Create Virtual Environment

   ```bash
   python3 -m venv .venv
   source .venv/bin/activate  # On Unix/macOS
   # or
   .venv\Scripts\activate  # On Windows
   ```

2. Install Modern Build Tools

   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

3. Configure Project Metadata (pyproject.toml)

   ```toml
   [project]
   name = "your-package"
   version = "0.1.0"
   description = "Your project description"
   authors = [
       {name = "Your Name", email = "your.email@example.com"}
   ]
   dependencies = [
       "requests>=2.31.0",
       # Add your dependencies here
   ]

   [build-system]
   requires = ["hatchling"]
   build-backend = "hatchling.build"
   ```

4. Set Up Pre-commit Hooks

   Create a `.pre-commit-config.yaml` file:

   ```yaml
   repos:
     - repo: https://github.com/pre-commit/pre-commit-hooks
       rev: v4.5.0
       hooks:
         - id: trailing-whitespace
         - id: end-of-file-fixer
         - id: check-yaml
         - id: check-added-large-files
     - repo: https://github.com/psf/black
       rev: 24.2.0
       hooks:
         - id: black
     - repo: https://github.com/charliermarsh/ruff-pre-commit
       rev: v0.3.0
       hooks:
         - id: ruff
           args: [--fix]
   ```

5. Install Development Dependencies

   ```bash
   uv pip install pre-commit black ruff pytest
   pre-commit install
   ```

## Best Practices

1. **Dependency Management**
   - Use `uv` for faster, more reliable package management
   - Pin your dependencies in requirements.txt
   - Use pyproject.toml for project metadata

2. **Code Quality**
   - Use pre-commit hooks for consistent code formatting
   - Run tests before committing
   - Follow PEP 8 style guidelines

3. **Testing**
   - Write tests using pytest
   - Aim for high test coverage
   - Use fixtures for test setup

4. **Documentation**
   - Write clear docstrings
   - Maintain a comprehensive README
   - Document API changes

## Example Code

### Basic Package Structure

```python
# src/your_package/__init__.py
"""Your package description."""

__version__ = "0.1.0"
```

```python
# src/your_package/main.py
"""Main module for your package."""

def hello_world():
    """Return a friendly greeting."""
    return "Hello, World!"
```

```python
# tests/test_basic.py
"""Basic test module."""

from your_package.main import hello_world

def test_hello_world():
    """Test the hello_world function."""
    assert hello_world() == "Hello, World!"
```

## Running Tests

```bash
pytest tests/
```

## Building and Publishing

1. Build your package:

   ```bash
   python -m build
   ```

2. Publish to PyPI (if desired):

   ```bash
   python -m twine upload dist/*
   ```

## Common Issues and Solutions

1. **Virtual Environment Issues**
   - Always activate your virtual environment before installing packages
   - Use `uv` for faster, more reliable package management

2. **Import Issues**
   - Ensure your package is installed in development mode
   - Check your PYTHONPATH if needed

3. **Pre-commit Hook Issues**
   - Run `pre-commit clean` to reset the hooks
   - Update hooks with `pre-commit autoupdate`

# Quick Git Branch & PR Guide

A concise, step-by-step guide for the most common Git workflow: creating a branch, making changes, committing, pushing, and opening a pull request (PR).

---

- **Create a new branch:**
  - `git checkout -b my-feature-branch`
    - (Creates and switches to a new branch)

- **Modify a file:**
  - Edit your file(s) as needed in your editor (e.g., VS Code, Cursor IDE, etc.)

- **Stage your changes:**
  - `git add <filename>`
    - (Or use `git add .` to stage all changes)

- **Commit your changes:**
  - `git commit -m "Describe your change"`

- **Push your branch to GitHub:**
  - `git push -u origin my-feature-branch`

- **Open a Pull Request (PR):**
  - Go to your repository on GitHub
  - You'll see a prompt to "Compare & pull request" for your branch—click it
  - Fill in the PR title and description, then click "Create pull request"

**Tip:**

You can also use the GitHub CLI (`gh`) to open a PR from the terminal:

- `gh pr create --fill`

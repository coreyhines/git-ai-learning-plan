# Agentic AI & Git Learning Plan

A rapid, hands-on curriculum for mastering Git, AI-assisted development, and modern workflows with an expert AI mentor agent. Designed for fast progress, with deep-dive references for further exploration.

> **New!** See the [Guide: Getting Access to Agentic AI in Cursor & VS Code (June 2025)](agentic-ai-access.md) for up-to-date advice on free tiers, cost models, and maximizing productivity with agentic AI tools.

---

## Module 1: Your Developer Superpower - A Modern Terminal

> 💡 **Why This Matters**: Your terminal is your direct interface to development superpowers. A well-configured terminal makes you faster, more confident, and less error-prone. Let's make it awesome!

### Quick Start (5 minutes)

```bash
# 1. Check if you're already using Zsh
echo $SHELL

# 2. Install Zsh if needed (macOS/Linux)
brew install zsh  # macOS
sudo apt install zsh  # Ubuntu/Debian

# 3. Make Zsh your default shell
chsh -s $(which zsh)

# 4. Install Oh-My-Zsh (the magic sauce)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 🚀 Level Up Your Terminal

1. **Must-Have Plugins** 
   > These plugins give you superpowers like command suggestions, syntax highlighting, and Git integration

   ```bash
   # Add to ~/.zshrc:
   plugins=(
     git
     zsh-autosuggestions
     zsh-syntax-highlighting
   )
   ```

2. **Smart Prompt**
   > Your prompt should tell you exactly what you need to know: Git status, Python env, and more

   ```bash
   # Popular themes that work great:
   ZSH_THEME="agnoster"    # Classic, informative
   ZSH_THEME="powerlevel10k"  # Modern, fast, customizable
   ```

### 🎯 Pro Tips

> 🔥 **Hot Tip**: Want your perfect terminal setup everywhere you go? Check out our [Portable Shell & Dotfiles Guide](portable-shell-dotfiles.md) for a one-command setup on any machine!

#### Common Questions

<details>
<summary>❓ "Why Zsh over Bash?"</summary>

- Better tab completion
- Smarter history search
- More powerful plugins
- Modern features while staying POSIX-compatible

</details>

<details>
<summary>❓ "Help! My prompt is showing weird characters!"</summary>

1. Install a [Nerd Font](https://www.nerdfonts.com/)
2. Set it in your terminal preferences
3. Reload your terminal

</details>

### 🎓 Learning Prompts

Try these with your AI assistant:

- "Help me customize my Zsh prompt to show Git status and Python virtualenv"
- "What are the most useful Zsh plugins for Python development?"
- "My terminal is slow after adding plugins - help me optimize it"

### 🔍 Deep Dive Resources

- 📺 [Video: Beautiful Terminal Setup in 10 Minutes](https://www.youtube.com/watch?v=msyAY6L7XJQ)
- 📚 [Oh My Zsh Official Site](https://ohmyz.sh/)
- 🛠️ [Awesome Zsh Plugins](https://github.com/unixorn/awesome-zsh-plugins)
- ⚡ [Powerlevel10k - The Ultimate Zsh Theme](https://github.com/romkatv/powerlevel10k)

---

## Module 2: Kickstart – Your AI Mentor & Git in Action

- **Meet Your AI Mentor**
  - Learn how the AI agent can guide, review, and unblock you throughout your workflow.
  - Example prompt: "What can you help me with in this project?"
- **Instant Git Setup**
  - Task: Initialize a new Git repository, make your first commit, and push to GitHub.
  - Use the AI to walk you through each step, explain commands, and troubleshoot errors.
  - Example prompt: "Help me set up a new Git repository and push it to GitHub. Explain each step."
- **Integrate Cursor IDE with GitHub**
  - Task: Connect Cursor IDE to your GitHub account and verify integration.
  - Use the AI to guide you through the integration process and check your setup.
  - Example prompt: "Guide me through connecting Cursor IDE to my GitHub account."
- **Test Your Integration with the AI Mentor**
  - Task: Make a test commit and push to verify everything works.
  - Example prompt: "Check if my Cursor IDE is properly connected to GitHub. Try making a test commit and push it to my repository. If there are any issues, help me fix them."
- **Go Deeper:**
  - [Pro Git Book](https://git-scm.com/book/en/v2)
  - [GitHub Docs: Getting Started](https://docs.github.com/en/get-started)
  - [Cursor IDE Docs: GitHub Integration](https://www.cursor.so/docs/integrations/github)

---

## Module 3: Branching, Iterating, and Rolling Back – Fast

- **Branching with AI**
  - Task: Create, switch, and merge branches for new features or experiments.
  - Use the AI to suggest branch names, explain branching strategies, and automate branch creation.
  - Example prompt: "Create a new branch for a feature called 'user-auth'. Explain why and how to use branches."
- **Iterate Rapidly**
  - Task: Make changes, commit, and use the AI to review and improve your code.
  - Example prompt: "Review my latest commit and suggest improvements."
- **Rollback Mistakes**
  - Task: Use Git commands to reset, revert, or checkout previous states if something goes wrong.
  - Use the AI to explain the difference between these commands and guide you through rollbacks.
  - Example prompt: "I made a mistake in my last commit. Should I use reset, revert, or checkout? Help me fix it."
- **Go Deeper:**
  - [Atlassian Git Branching Guide](https://www.atlassian.com/git/tutorials/using-branches)
  - [Git Reset, Revert, and Checkout](https://www.git-tower.com/learn/git/ebook/en/command-line/advanced-topics/undoing-things)
  - [Oh Shit, Git!?!](https://ohshitgit.com/)

---

## Module 4: AI + Cursor IDE + GitHub Integration

- **Connect Everything**
  - Task: Ensure your GitHub repo is linked in Cursor IDE and you can see Git status, commit, push, and pull.
  - Example prompt: "Show me how to use Git features in Cursor IDE."
- **AI-Driven Code Reviews & PRs**
  - Task: Use the AI to review your code, suggest improvements, and help you create pull requests.
  - Example prompt: "Review my code and help me create a pull request for my latest feature."
- **Collaborate with the AI**
  - Task: Use the agent to explain diffs, resolve merge conflicts, and document your changes.
  - Example prompt: "Explain the differences between these two branches and help me resolve any conflicts."
- **Go Deeper:**
  - [Cursor IDE Docs](https://www.cursor.so/docs)
  - [GitHub Pull Requests](https://docs.github.com/en/pull-requests)

---

## Module 5: Supercharge with Model Context Protocols (MCP)

- **What is MCP?**
  - Learn how MCP tools expand your AI's context and capabilities for smarter assistance.
  - Example prompt: "What are Model Context Protocols and how can they help me in Cursor?"
- **Hands-On: Install & Use the Official Everything MCP Server**
  - Task: Set up the official Everything MCP Server (`@modelcontextprotocol/server-everything`) to experiment with a variety of MCP tools.
  - **Quick Start:**
    1. Make sure you have Node.js installed.
    2. Run the server with:

       ```sh
       npx @modelcontextprotocol/server-everything
       ```

    3. (Optional) Integrate with VS Code by adding to `.vscode/mcp.json`:

       ```json
       {
         "servers": {
           "everything": {
             "command": "npx",
             "args": ["-y", "@modelcontextprotocol/server-everything"]
           }
         }
       }
       ```

    4. Explore the available tools (e.g., `add`, `echo`, `sampleLLM`, `printEnv`) and try calling them from your AI agent or IDE.
  - Use the AI to guide installation, configuration, and first use.
  - Example prompt: "Walk me through installing and using the Everything MCP Server with Cursor."
- **Enhance Your Workflow**
  - Task: Use MCP to search code, share context, and automate tasks with the AI.
  - Example prompt: "Use MCP to search for all functions related to authentication in my codebase."
- **Go Deeper:**
  - [Everything MCP Server on npm](https://www.npmjs.com/package/@modelcontextprotocol/server-everything)
  - [MCP Tools Documentation](https://modelcontextprotocol.io/docs/concepts/tools)
  - [MCP Example Servers](https://modelcontextprotocol.io/introduction)

---

## Module 6: Real-World Project – Rapid Co-Development

- **Build Something Real, Fast**
  - Task: Define a small project (e.g., CLI tool, web app) with the AI's help.
  - Example prompt: "Help me brainstorm and outline a simple CLI tool project."
- **Plan, Build, and Iterate with AI**
  - Task: Use the AI to break down the project into tasks, create branches, and implement features step by step.
  - Example prompt: "Create a task list for this project and help me start the first feature branch."
- **Practice Branching, Merging, and Rollbacks**
  - Task: Use the AI to guide you through branching, merging, and rolling back changes as you develop.
  - Example prompt: "Guide me through merging my feature branch and resolving any conflicts."
- **Use MCP Tools to Enhance Workflow**
  - Task: Leverage MCP for advanced code search, context sharing, and automation.
  - Example prompt: "Show me how to use MCP to document and share project context with collaborators."
- **Go Deeper:**
  - [Open Source Guides](https://opensource.guide/)
  - [Effective Pair Programming](https://martinfowler.com/articles/on-pair-programming.html)

---

## Module 7: Laying the Foundation for a Modern Python Project

- **Project Structure & Initialization**
  - Task: Create a clean project directory and initialize it in Cursor IDE.
  - Example prompt: "Set up a new Python project structure in this directory, including a src/ folder and a README.md."

- **Dependency Management with uv and requirements.txt**
  - Task: Use [uv](https://github.com/astral-sh/uv) (a fast, modern Python package manager) to manage dependencies.
  - Example prompt: "Install uv and use it to add requests and pytest to my project. Generate a requirements.txt file."
  - Why: uv is faster and more reliable than pip, and requirements.txt ensures reproducibility for collaborators and CI.

- **Development Environment: Should You Use a devcontainer?**
  - Task: Decide whether to use a [devcontainer](https://containers.dev/) for consistent, reproducible development environments.
  - Example prompt: "Should I use a devcontainer for this project? If so, generate a .devcontainer/devcontainer.json for a Python 3.11 environment with uv and ruff pre-installed."
  - Why: Devcontainers make onboarding, CI, and cross-platform development easier and more reliable.

- **Code Quality: Setting Up Ruff**
  - Task: Add [ruff](https://docs.astral.sh/ruff/) for fast linting and code formatting.
  - Example prompt: "Install ruff and configure it for this project. Add a pyproject.toml with recommended settings."
  - Why: Ruff enforces code style and catches errors early, improving code quality and consistency.

- **Automated Checks: Pre-commit Hooks**
  - Task: Set up [pre-commit](https://pre-commit.com/) to run ruff and other checks before every commit.
  - Example prompt: "Set up pre-commit to run ruff and black on every commit. Add a .pre-commit-config.yaml and install the hooks."
  - Why: Pre-commit ensures code quality checks are run automatically, preventing bad code from entering your repo.

- **Letting the AI Agent Do the Heavy Lifting**
  - Task: Use the agent to automate setup, explain configuration files, and troubleshoot issues.
  - Example prompt: "Automate the setup of uv, ruff, and pre-commit for this project. Explain what each tool does and how to use it."
  - Example prompt: "If I get a pre-commit error, help me understand and fix it."

- **Go Deeper:**
  - [uv: Fast Python Package Manager](https://github.com/astral-sh/uv)
  - [Ruff: Python Linter & Formatter](https://docs.astral.sh/ruff/)
  - [pre-commit: Framework for Managing Git Hooks](https://pre-commit.com/)
  - [Dev Containers](https://containers.dev/)

---

## Module 8: Automating CI and Testing with Your AI Agent

- **Setting Up a CI Pipeline with GitHub Actions**
  - Task: Automate continuous integration (CI) for your project using GitHub Actions.
  - Example prompt: "Set up a GitHub Actions workflow to run my Python tests and linting on every push and pull request."
  - Why: CI ensures your code is automatically tested and checked for quality before merging, reducing bugs and improving reliability.
  - Example prompt: "Explain what each step in the generated GitHub Actions workflow does."

- **Letting the Agent Do the Heavy Lifting**
  - Task: Use the agent to generate, configure, and troubleshoot your CI pipeline.
  - Example prompt: "If my GitHub Actions workflow fails, help me debug and fix the issue."

- **Writing and Maintaining Tests with the Agent**
  - Task: Ask the agent to generate unit, integration, or end-to-end tests for your codebase.
  - Example prompt: "Write unit tests for my main.py file using pytest."
  - Example prompt: "Review my test coverage and suggest areas that need more tests."
  - Why: Automated tests catch bugs early, document expected behavior, and make refactoring safer. With an AI agent, writing and maintaining tests becomes much easier and less time-consuming.

- **Why Adopt CI and Automated Testing Now?**
  - With your AI agent handling much of the setup and maintenance, there's little reason not to automate quality checks and testing. This leads to more robust, maintainable, and collaborative projects.

- **Go Deeper:**
  - [GitHub Actions Documentation](https://docs.github.com/en/actions)
  - [pytest Documentation](https://docs.pytest.org/en/stable/)
  - [Guide: Automated Testing Best Practices](https://martinfowler.com/bliki/TestPyramid.html)

---

## Best Practices for Prompting Cursor-Style Agents

- **Be Specific and Contextual:**
  Clearly state your goal, provide relevant code or file references, and specify the language or framework if needed.
- **Use Step-by-Step (Chain-of-Thought) Prompts:**
  For complex tasks, break your request into steps or ask the agent to explain its reasoning as it works.
- **Give Examples (Few-Shot Prompting):**
  If you want a certain style or format, provide a short example in your prompt.
- **Iterate and Refine:**
  Don't expect perfection on the first try—ask follow-up questions, request clarifications, and refine your prompt as needed.
- **Ask for Explanations:**
  If you don't understand a suggestion, ask the agent to explain its reasoning or the code it generated.
- **Leverage Cursor Rules:**
  Use `.cursorrules` to set project-specific guidelines for the agent, such as coding style, error handling, or naming conventions.
- **Review and Test AI-Generated Code:**
  Always review, test, and validate code before merging or deploying.
- **Be Polite and Clear:**
  While not required, a friendly and clear tone can improve results and make collaboration smoother.

### References & Further Reading

- [AI-Powered Coding Assistants: Best Practices (Monterail)](https://www.monterail.com/blog/ai-powered-coding-assistants-best-practices)
- [Maximizing Your Cursor Use (Medium)](https://extremelysunnyyk.medium.com/maximizing-your-cursor-use-advanced-prompting-cursor-rules-and-tooling-integration-496181fa919c)
- [Top Cursor Rules for Coding Agents (PromptHub)](https://www.prompthub.us/blog/top-cursor-rules-for-coding-agents)
- [Cursor System Prompt Revealed (Pat McGuinness)](https://patmcguinness.substack.com/p/cursor-system-prompt-revealed)

---

## References & Further Learning

- Git, GitHub, Cursor IDE, and MCP documentation
- Example repositories and exercises
- Community and support channels

---

## Next Steps

- Keep building with AI and Git
- Explore advanced MCP integrations
- Contribute to open source with your new skills

## Common Scenarios and Solutions

Here are some common scenarios you might encounter and how to handle them using Git with AI assistance:

### Working with Branches

When starting new work:

1. Create a new branch from main
2. Make your changes
3. Commit regularly with clear messages
4. Push to remote and create PR when ready

AI can help with:

- Generating meaningful commit messages
- Reviewing changes for potential issues
- Suggesting improvements to code quality

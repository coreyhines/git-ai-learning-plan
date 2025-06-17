# Agentic AI & Git Learning Plan

A rapid, hands-on curriculum for mastering Git, AI-assisted development, and modern workflows with an expert AI mentor agent. Designed for fast progress, with deep-dive references for further exploration.

---

## Module 1: Kickstart – Your AI Mentor & Git in Action

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

## Module 2: Branching, Iterating, and Rolling Back – Fast

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

## Module 3: AI + Cursor IDE + GitHub Integration

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

## Module 4: Supercharge with Model Context Protocols (MCP)

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

## Module 5: Real-World Project – Rapid Co-Development

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

## Module 6: Laying the Foundation for a Modern Python Project

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

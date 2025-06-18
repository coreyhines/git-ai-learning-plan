```mermaid
flowchart TD
    A["Existing LAMP Site (Remote Server)"]
    B["Initialize Git Repo"]
    C["Connect to GitHub (SSH Keys)"]
    D["Push to GitHub"]
    E["Clone Repo Locally / in Dev Container"]
    F["Local Dev in Dev Container"]
    G["Commit & Push Changes"]
    H["Pull Changes to Remote Server"]
    I["Branch for ClientA"]
    J["Branch for ClientB"]
    K["Deploy to Production"]

    A --> B
    B --> C
    C --> D
    D --> E
    E --> F
    F --> G
    G --> D
    D --> H
    H --> K
    G --> I
    G --> J
    I --> G
    J --> G
```

# Rapid Git & Modern Workflow Onboarding for Existing LAMP Sites

**Audience:**  
Developers with an existing LAMP site, not yet using Git, working over VS Code SSH remote, and needing to modernize their workflow with local development, version control, and branching.

---

## Module 1: Why Version Control? (And Why Now)

- **What you gain:**  
  Safer changes, easy rollbacks, collaboration, and a clear history.
- **Agent prompt:**  
  "Explain why I should use Git for my website and what problems it will solve for me."

---

## Module 2: Setting Up Git for Your Existing Site

- **Initialize Git in your project directory (remote or local):**
  - `git init`
- **Add your files and make your first commit:**
  - `git add .`
  - `git commit -m "Initial commit of existing site"`
- **Agent prompt:**  
  "Guide me through initializing Git for my existing site and making my first commit."

---

## Module 3: Connecting to GitHub (and SSH Key Management)

- **Generate an SSH key (if needed):**
  - `ssh-keygen -t ed25519 -C "your_email@example.com"`
- **Add your SSH key to GitHub.**
- **Troubleshoot SSH agent and VS Code SSH remote issues.**
- **Agent prompt:**  
  "Help me set up SSH keys so I can push to GitHub from my VS Code SSH remote session without conflicts."

---

## Module 4: Local Development with Dev Containers

- **Why use a dev container?**  
  Consistent, isolated environment for LAMP stack development.
- **Agent prompt:**  
  "Help me create a devcontainer for my LAMP stack site, even though I don't know Docker or Podman."
- **Tasks:**  
  Use VS Code's "Add Dev Container Configuration" feature.  
  Agent can generate a starter `.devcontainer/devcontainer.json` and `Dockerfile` for LAMP.  
  Test running the site locally in the container.

---

## Module 5: Workflow—From Local to Remote

- **Recommended flow:**  
  1. Develop and test locally in the devcontainer.  
  2. Commit and push changes to GitHub.  
  3. Pull changes to the remote server for deployment.
- **Agent prompt:**  
  "Show me a safe workflow for developing locally and deploying to my remote LAMP server using Git."

---

## Module 6: Branching for Multiple Clients

- **Create and manage branches for different clients:**
  - `git checkout -b clientA`
  - `git checkout -b clientB`
- **Agent prompt:**  
  "How do I keep two versions of my site for different clients using Git branches?"

---

## Module 7: Best Practices & Troubleshooting

- **.gitignore for LAMP:**  
  Exclude `vendor/`, `node_modules/`, `.env`, etc.
- **Agent prompt:**  
  "What should I put in my .gitignore for a LAMP stack site?"
- **Common issues:**  
  SSH key conflicts, merge conflicts, pushing/pulling from remote.

---

## Resources & Deep Dives

- [Oh Shit, Git!?](https://ohshitgit.com/)
- [VS Code Remote Development Docs](https://code.visualstudio.com/docs/remote/ssh)
- [GitHub SSH Key Setup](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
- [Dev Containers in VS Code](https://containers.dev/)

---

**Tip:**  
At every step, use your agent to ask for explanations, troubleshooting, or to generate config files for you! 

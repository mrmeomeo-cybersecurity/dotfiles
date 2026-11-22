# dotfiles

Personal Codespaces dotfiles for mrmeomeo-cybersecurity. GitHub Codespaces clones this repo into every new codespace and runs `install.sh`, which symlinks:

- `.zshrc` — zsh + Oh My Zsh, Starship prompt, everyday aliases (gs/gl/gp, docker compose, ports, myip)
- `.gitconfig` — git identity (GitHub noreply email), default branch main, short aliases
- `starship.toml` — compact prompt (directory, git, node/python, duration)

No secrets live in this repo — it is public by design. Edit files here, commit, and the next new codespace picks them up (existing codespaces keep the version they were created with).

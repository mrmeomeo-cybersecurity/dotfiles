export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git)
[ -f "$ZSH/oh-my-zsh.sh" ] && source "$ZSH/oh-my-zsh.sh"

# Starship prompt (installed by install.sh when missing)
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"

export EDITOR="code --wait"
alias ll="ls -alF"
alias gs="git status -sb"
alias gl="git log --oneline -15"
alias gp="git pull --ff-only"
alias ports="ss -tlnp 2>/dev/null || netstat -tlnp 2>/dev/null"
alias myip="curl -s https://ifconfig.me; echo"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"

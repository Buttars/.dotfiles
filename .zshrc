export ZSH=/home/buttars/.oh-my-zsh

ZSH=/usr/share/oh-my-zsh/

ZSH_THEME="bullet-train"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

source $ZSH/oh-my-zsh.sh

plugins=(
  git
  adb
  archlinux
  gitignore
)

BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  git
  status
)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux -u

# Aliases
alias pacman="sudo pacman"
alias systemctl="sudo systemctl"
alias cd..="cd .."
alias vim="nvim"
alias f="fuck"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dc="docker-compose"
alias c="code ."

eval $(thefuck --alias)

# paths

PATH=/home/buttars/.yarn/bin:$PATH

eval $(ssh-agent) &>/dev/null
ssh-add ~/.ssh/mobl_rsa &>/dev/null

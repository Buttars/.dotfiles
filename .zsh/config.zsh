source $ZSH/oh-my-zsh.sh

# Compilation flags
export ARCHFLAGS="-arch x86_64"

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export GOPATH=$HOME/.go
#export JAVA_HOME=$HOME/java/java8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

eval $(thefuck --alias)

# Vim keybindings in terminal
bindkey -v 

bindkey "^R" history-incremental-pattern-search-backward

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux -u

# Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# SSH
eval $(ssh-agent) &>/dev/null
ssh-add ~/.ssh/mobl_rsa &>/dev/null

# PAM authentication
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

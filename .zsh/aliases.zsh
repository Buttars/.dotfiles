# Generic shortcuts:
alias files="ranger"
alias audio="ncpamixer"
alias calender="calcurse"

# System Maintainence
#alias mw="~/.config/mutt/mutt-wizard.sh"
#alias muttwizard="~/.config/mutt/mutt-wizard.sh"
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias upgr="notify-send -i ~/.scripts/larbs.png 'Upgrade started' & neofetch && sudo packer -Syyuv --noconfirm && notify-send -i ~/.scripts/larbs.png 'Upgrade complete'."
alias sdn="sudo shutdown now"
alias newnet="sudo systemctl restart NetworkManager" # Refresh wifi
alias nf="clear && neofetch" # Le Redditfetch

# Some aliases
alias pacman="sudo pacman"
alias p="sudo pacman"
alias SS="sudo systemctl"
alias vim="nvim"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias gitup="git push origin master"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias rf="source ~/.bashrc"
alias ref="shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias bars="~/.config/polybar/launch.sh" # Run Polybar relaunch script
alias cd..="cd .."
alias f="fuck"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dc="docker-compose"
alias c="code ."


# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio
alias YT="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"
alias tpbs="clear && figlet -c TPB Search && tpb.sh" # Pirate Bay search

# Audio and Music
alias mute="pamixer -m"
alias unmute="pamixer -u"
alias vu="pamixer --allow-boost -i 5"
alias vd="pamixer --allow-boost -d 5"
alias pause="mpc toggle"
alias next="mpc next"
alias prev="mpc prev"
alias trupause="mpc pause"
alias beg="mpc seek 0%"
alias lilbak="mpc seek -10"
alias lilfor="mpc seek +10"
alias bigbak="mpc seek -120"
alias bigfor="mpc seek +120"



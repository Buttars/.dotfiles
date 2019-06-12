# Generic shortcuts:
alias files="ranger"
alias audio="ncpamixer"
alias calender="calcurse"

# System Maintainence
#alias mw="~/.config/mutt/mutt-wizard.sh"
#alias muttwizard="~/.config/mutt/mutt-wizard.sh"
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias upgr="notify-send -i ~/.scripts/larbs.png 'Upgrade started' & neofetch && yay -Syyuv --noconfirm && notify-send -i ~/.scripts/larbs.png 'Upgrade complete'."
alias sdn="sudo shutdown now"
alias newnet="sudo systemctl restart NetworkManager" # Refresh wifi
alias nf="clear && neofetch" # Le Redditfetch

# Some aliases
alias -g pacman="sudo pacman"
alias -g p="sudo pacman"
alias -g systemctl="sudo systemctl"
alias SS="sudo systemctl"
alias -g vim="nvim"
alias -g v="nvim"
alias -g sv="sudo vim"
alias -g r="ranger"
alias sr="sudo ranger"
alias -g ka="killall"
alias -g g="git"
alias -g gitup="git push origin master"
alias -g trem="transmission-remote"
alias -g mkd="mkdir -pv"
alias rf="source ~/.zshrc"
alias ref="shortcuts.sh && source ~/.zshrc" # Refresh shortcuts manually and reload bashrc
alias -g f="fuck"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias -g dc="docker-compose"
alias -g google-chrome-debug="google-chrome-stable --remote-debugging-port=4200 --user-data-dir=remote-profile &|"
alias -g yy="mpv --really-quiet --volume=50 --autofit=30% --geometry=-10-15 --ytdl --ytdl-format='mp4[height<=?720]' -ytdl-raw-options=playlist-start=1"
alias dev="cd ~/Development/"

# Adding color
alias -g ls='ls -hN --color=auto --group-directories-first'
alias -g crep="grep --color=always" # Color grep - highlight desired sequence.
alias -g ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio
alias YT="youtube-viewer"
alias -g ethspeed="speedometer -r enp0s25"
alias -g wifispeed="speedometer -r wlp3s0"
alias -g tpbs="clear && figlet -c TPB Search && tpb.sh" # Pirate Bay search

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



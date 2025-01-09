# Automatically add sudo to specific commands
for command in mount umount sv su shutdown poweroff reboot
    function $command
        command sudo $command $argv
    end
end

# Verbose and useful settings
function cp
    command cp -iv $argv
end

function mv
    command mv -iv $argv
end

function rm
    command rm -vI $argv
end

function bc
    command bc -ql
end

function rsync
    command rsync -vrPlu $argv
end

function mkd
    command mkdir -pv $argv
end

abbr ll "ls -la"
abbr dotfiles "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
abbr discord "discord -enable-features=UseOzonePlatform -ozone-platform=wayland"

# Colorize commands
function ls
    command ls -hN --color=auto --group-directories-first $argv
end

function grep
    command grep --color=auto $argv
end

function diff
    command diff --color=auto $argv
end

function ccat
    command highlight --out-format=ansi $argv
end

function ip
    command ip -color=auto $argv
end

# Abbreviations for common commands
abbr ka "killall"
abbr g "git"
abbr sdn "shutdown -h now"
abbr e "$EDITOR"
abbr v "$EDITOR"
abbr f "fuck"
abbr g "gorilla"


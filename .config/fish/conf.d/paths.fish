# XDG paths
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux INPUTRC $XDG_CONFIG_HOME/shell/inputrc

# Add ~/.local/bin to PATH
for dir in (find ~/.local/bin -type d)
    set -x PATH $PATH $dir
end


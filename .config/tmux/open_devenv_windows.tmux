# Open each command in a new window at the end of the list
new-window -n "📜 nvim" -c "#{pane_current_path}" "nvim"
new-window -n "🛠️ devenv" -c "#{pane_current_path}" "nix develop --accept-flake-config --no-pure-eval --command devenv up; exec zsh -l"
new-window -n "🛢️ lazysql" -c "#{pane_current_path}" "nix develop --accept-flake-config --no-pure-eval --command lazysql; exec zsh -l"
new-window -n "🌐 atac" -c "#{pane_current_path}" "nix develop --accept-flake-config --no-pure-eval --command atac; exec zsh -l"

# Move each new window to the beginning in reverse order to place them in the correct order
move-window -b -t 1 -s "🌐 atac"
move-window -b -t 1 -s "🛢️ lazysql"
move-window -b -t 1 -s "🛠️ devenv"
move-window -b -t 1 -s "📜 nvim"

# Renumber windows to ensure they are sequential
move-window -r

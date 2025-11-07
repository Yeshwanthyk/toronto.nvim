# Toronto Dawn theme for Tmux
# https://github.com/your-username/toronto.nvim

# Status bar
set -g status-style "bg=#f2f3fb,fg=#101010"
set -g status-left-style "bg=#379cff,fg=#f9faff,bold"
set -g status-right-style "bg=#f2f3fb,fg=#56607b"

# Window status
set -g window-status-style "bg=#f2f3fb,fg=#56607b"
set -g window-status-current-style "bg=#379cff,fg=#f9faff,bold"
set -g window-status-activity-style "bg=#f28a3a,fg=#f9faff"
set -g window-status-bell-style "bg=#ff5c93,fg=#f9faff"

# Panes
set -g pane-border-style "fg=#c1c4f0"
set -g pane-active-border-style "fg=#379cff"

# Messages
set -g message-style "bg=#1f96e0,fg=#f9faff,bold"
set -g message-command-style "bg=#379cff,fg=#f9faff,bold"

# Copy mode
set -g mode-style "bg=#d4dcff,fg=#101010"

# Clock
set -g clock-mode-colour "#379cff"

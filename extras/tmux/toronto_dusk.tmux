# Toronto Dusk theme for Tmux
# https://github.com/your-username/toronto.nvim

# Status bar
set -g status-style "bg=#0f0f0f,fg=#ffffff"
set -g status-left-style "bg=#87ceeb,fg=#000000,bold"
set -g status-right-style "bg=#0f0f0f,fg=#cccccc"

# Window status
set -g window-status-style "bg=#0f0f0f,fg=#cccccc"
set -g window-status-current-style "bg=#87ceeb,fg=#000000,bold"
set -g window-status-activity-style "bg=#b8860b,fg=#000000"
set -g window-status-bell-style "bg=#ff8899,fg=#000000"

# Panes
set -g pane-border-style "fg=#262626"
set -g pane-active-border-style "fg=#87ceeb"

# Messages
set -g message-style "bg=#88d5ff,fg=#000000,bold"
set -g message-command-style "bg=#87ceeb,fg=#000000,bold"

# Copy mode
set -g mode-style "bg=#333333,fg=#ffffff"

# Clock
set -g clock-mode-colour "#87ceeb"
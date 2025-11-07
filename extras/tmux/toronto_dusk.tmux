# Toronto Dusk theme for Tmux
# https://github.com/your-username/toronto.nvim

# Status bar
set -g status-style "bg=#0f0f0f,fg=#f6f6f6"
set -g status-left-style "bg=#7fd2ff,fg=#000000,bold"
set -g status-right-style "bg=#0f0f0f,fg=#d0d0e8"

# Window status
set -g window-status-style "bg=#0f0f0f,fg=#d0d0e8"
set -g window-status-current-style "bg=#7fd2ff,fg=#000000,bold"
set -g window-status-activity-style "bg=#b8860b,fg=#000000"
set -g window-status-bell-style "bg=#ff8899,fg=#000000"

# Panes
set -g pane-border-style "fg=#262626"
set -g pane-active-border-style "fg=#7fd2ff"

# Messages
set -g message-style "bg=#56c8ff,fg=#000000,bold"
set -g message-command-style "bg=#7fd2ff,fg=#000000,bold"

# Copy mode
set -g mode-style "bg=#3f2d4a,fg=#f6f6f6"

# Clock
set -g clock-mode-colour "#7fd2ff"

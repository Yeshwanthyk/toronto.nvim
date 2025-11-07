# Toronto Spring theme for Tmux
# https://github.com/your-username/toronto.nvim

# Status bar
set -g status-style "bg=#212637,fg=#dfe5f0"
set -g status-left-style "bg=#7cc9ff,fg=#1a1d2a,bold"
set -g status-right-style "bg=#212637,fg=#6f7b8f"

# Window status
set -g window-status-style "bg=#212637,fg=#6f7b8f"
set -g window-status-current-style "bg=#7cc9ff,fg=#1a1d2a,bold"
set -g window-status-activity-style "bg=#ffd580,fg=#1a1d2a"
set -g window-status-bell-style "bg=#ffb4a2,fg=#1a1d2a"

# Panes
set -g pane-border-style "fg=#2f374f"
set -g pane-active-border-style "fg=#7cc9ff"

# Messages
set -g message-style "bg=#7cc9ff,fg=#1a1d2a,bold"
set -g message-command-style "bg=#7cc9ff,fg=#1a1d2a,bold"

# Copy mode
set -g mode-style "bg=#2b3047,fg=#dfe5f0"

# Clock
set -g clock-mode-colour "#7cc9ff"

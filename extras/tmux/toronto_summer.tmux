# Toronto Summer theme for Tmux
# https://github.com/your-username/toronto.nvim

# Status bar
set -g status-style "bg=#f1e5d4,fg=#31251d"
set -g status-left-style "bg=#804704,fg=#f8efe1,bold"
set -g status-right-style "bg=#f1e5d4,fg=#765e4e"

# Window status
set -g window-status-style "bg=#f1e5d4,fg=#765e4e"
set -g window-status-current-style "bg=#804704,fg=#f8efe1,bold"
set -g window-status-activity-style "bg=#72570b,fg=#f8efe1"
set -g window-status-bell-style "bg=#97363c,fg=#f8efe1"

# Panes
set -g pane-border-style "fg=#cec1b1"
set -g pane-active-border-style "fg=#804704"

# Messages
set -g message-style "bg=#7a4a36,fg=#f8efe1,bold"
set -g message-command-style "bg=#804704,fg=#f8efe1,bold"

# Copy mode
set -g mode-style "bg=#dacebe,fg=#31251d"

# Clock
set -g clock-mode-colour "#804704"

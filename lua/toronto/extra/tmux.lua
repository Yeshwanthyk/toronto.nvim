local M = {}

function M.generate(colors, variant)
  local template = [[
# Toronto %s theme for Tmux
# https://github.com/your-username/toronto.nvim

# Status bar
set -g status-style "bg=%s,fg=%s"
set -g status-left-style "bg=%s,fg=%s,bold"
set -g status-right-style "bg=%s,fg=%s"

# Window status
set -g window-status-style "bg=%s,fg=%s"
set -g window-status-current-style "bg=%s,fg=%s,bold"
set -g window-status-activity-style "bg=%s,fg=%s"
set -g window-status-bell-style "bg=%s,fg=%s"

# Panes
set -g pane-border-style "fg=%s"
set -g pane-active-border-style "fg=%s"

# Messages
set -g message-style "bg=%s,fg=%s,bold"
set -g message-command-style "bg=%s,fg=%s,bold"

# Copy mode
set -g mode-style "bg=%s,fg=%s"

# Clock
set -g clock-mode-colour "%s"
]]

  local theme_name = variant:gsub("^%l", string.upper)
  
  return template:format(
    theme_name,
    colors.ui_bg,        -- status bg
    colors.fg,           -- status fg
    colors.method,       -- status-left bg
    colors.bg,           -- status-left fg
    colors.ui_bg,        -- status-right bg
    colors.dim,          -- status-right fg
    colors.ui_bg,        -- window-status bg
    colors.dim,          -- window-status fg
    colors.method,       -- window-status-current bg
    colors.bg,           -- window-status-current fg
    colors.yellow,       -- window-status-activity bg
    colors.bg,           -- window-status-activity fg
    colors.red,          -- window-status-bell bg
    colors.bg,           -- window-status-bell fg
    colors.border,       -- pane-border
    colors.method,       -- pane-active-border
    colors.number,       -- message bg
    colors.bg,           -- message fg
    colors.method,       -- message-command bg
    colors.bg,           -- message-command fg
    colors.visual,       -- copy mode bg
    colors.fg,           -- copy mode fg
    colors.method        -- clock color
  )
end

return M
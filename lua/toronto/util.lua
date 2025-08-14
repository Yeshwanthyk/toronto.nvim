local M = {}

M.bg = "#000000"
M.fg = "#ffffff"

---@param c string
local function rgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
---@param background string background color
function M.blend(foreground, alpha, background)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = rgb(background)
  local fg = rgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.blend_bg(hex, amount, bg)
  return M.blend(hex, amount, bg or M.bg)
end

function M.blend_fg(hex, amount, fg)
  return M.blend(hex, amount, fg or M.fg)
end

function M.darken(hex, amount, bg)
  return M.blend_bg(hex, amount, bg)
end

function M.lighten(hex, amount, fg)
  return M.blend_fg(hex, amount, fg)
end

---@param hex string
---@param amount number
function M.brighten(hex, amount)
  amount = amount or 0.3
  local r, g, b = hex:match("#([a-fA-F0-9][a-fA-F0-9])([a-fA-F0-9][a-fA-F0-9])([a-fA-F0-9][a-fA-F0-9])")
  if not r then return hex end
  
  r = math.min(255, math.floor(tonumber(r, 16) * (1 + amount)))
  g = math.min(255, math.floor(tonumber(g, 16) * (1 + amount)))
  b = math.min(255, math.floor(tonumber(b, 16) * (1 + amount)))
  
  return string.format("#%02x%02x%02x", r, g, b)
end

return M
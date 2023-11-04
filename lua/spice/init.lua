local util = require("spice.util")
local theme = require("spice.theme")
local config = require("spice.config")

local M = {}

function M._load(style)
  if style and not M._style then
    M._style = require("spice.config").options.style
  end
  if not style and M._style then
    require("spice.config").options.style = M._style
    M._style = nil
  end
  M.load({ style = style, use_background = style == nil })
end

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("spice.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M

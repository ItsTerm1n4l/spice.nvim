local colors = require("spice.colors").setup({ transform = true })
local config = require("spice.config").options

local spice = {}

spice.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.dark5, fg = colors.blue },
  c = { bg = colors.bg, fg = colors.altwhite },
}

spice.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.dark5, fg = colors.green },
}

spice.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.dark5, fg = colors.yellow },
}

spice.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.dark5, fg = colors.magenta },
}

spice.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.dark5, fg = colors.red },
}

spice.terminal = {
  a = {bg = colors.green1, fg = colors.black },
  b = {bg = colors.dark5, fg=colors.green1 },
}

spice.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.dark5, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.dark5 },
}

if config.lualine_bold then
  for _, mode in pairs(spice) do
    mode.a.gui = "bold"
  end
end

return spice

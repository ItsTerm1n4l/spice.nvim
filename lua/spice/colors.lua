local util = require("spice.util")

local M = {}

---@class Palette
M.default = {
  none = "NONE",
  bg_dark = "#665c54",
  bg = "#282828",
  bg_highlight = "#928374",
  terminal_black = "#665c54",
  fg = "#dfbf8e",
  fg_dark = "#dfbf8e",
  fg_gutter = "#dfbf8e",
  dark3 = "#665c54",
  comment = "#928374",
  dark5 = "#665c54",
  blue0 = "#7daea3",
  blue = "#7daea3",
  cyan = "#89b482",
  blue1 = "#7daea3",
  blue2 = "#7daea3",
  blue5 = "#7daea3",
  blue6 = "#89b482",
  blue7 = "#928374",
  magenta = "#d3869b",
  magenta2 = "#d3869b",
  purple = "#d3869b",
  orange = "#e3a84e",
  yellow = "#e78a4e",
  green = "#a9b665",
  green1 = "#a9b665",
  green2 = "#a9b665",
  teal = "#a9b665",
  red = "#ea6962",
  red1 = "#ea6962",
  git = { change = "#6183bb", add = "#449dab", delete = "#914c54" },
  gitSigns = {
    add = "#266d6a",
    change = "#536c9e",
    delete = "#b2555b",
  },
}

M.night = {
  bg = "#1a1b26",
  bg_dark = "#16161e",
}
M.day = M.night

M.moon = function()
  local ret = {
    none = "NONE",
    bg_dark = "#1e2030", --
    bg = "#222436", --
    bg_highlight = "#2f334d", --
    terminal_black = "#444a73", --
    fg = "#c8d3f5", --
    fg_dark = "#828bb8", --
    fg_gutter = "#3b4261",
    dark3 = "#545c7e",
    comment = "#7a88cf", --
    dark5 = "#737aa2",
    blue0 = "#3e68d7", --
    blue = "#82aaff", --
    cyan = "#86e1fc", --
    blue1 = "#65bcff", --
    blue2 = "#0db9d7",
    blue5 = "#89ddff",
    blue6 = "#b4f9f8", --
    blue7 = "#394b70",
    purple = "#fca7ea", --
    magenta2 = "#ff007c",
    magenta = "#c099ff", --
    orange = "#ff966c", --
    yellow = "#ffc777", --
    green = "#c3e88d", --
    green1 = "#4fd6be", --
    green2 = "#41a6b5",
    teal = "#4fd6be", --
    red = "#ff757f", --
    red1 = "#c53b53", --
  }
  ret.comment = util.blend(ret.comment, ret.bg, "bb")
  ret.git = {
    change = util.blend(ret.blue, ret.bg, "ee"),
    add = util.blend(ret.green, ret.bg, "ee"),
    delete = util.blend(ret.red, ret.bg, "dd"),
  }
  ret.gitSigns = {
    change = util.blend(ret.blue, ret.bg, "66"),
    add = util.blend(ret.green, ret.bg, "66"),
    delete = util.blend(ret.red, ret.bg, "aa"),
  }
  return ret
end

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("spice.config")

  local style = config.is_day() and config.options.light_style or config.options.style
  local palette = M[style] or {}
  if type(palette) == "function" then
    palette = palette()
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

  util.bg = colors.bg
  util.day_brightness = config.options.day_brightness

  colors.diff = {
    add = util.darken(colors.green2, 0.15),
    delete = util.darken(colors.red1, 0.15),
    change = util.darken(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.git.ignore = colors.dark3
  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = util.darken(colors.blue1, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = util.darken(colors.blue0, 0.4)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  -- colors.fg_float = config.options.styles.floats == "dark" and colors.fg_dark or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.delta = {
    add = util.darken(colors.green2, 0.45),
    delete = util.darken(colors.red1, 0.45),
  }

  config.options.on_colors(colors)
  if opts.transform and config.is_day() then
    util.invert_colors(colors)
  end

  return colors
end

return M

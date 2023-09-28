-- Colorscheme name:    prime.nvim
-- Description:         Port of articicestudio's prime theme for neovim
-- Author:              https://github.com/shaunsingh

local util = require("prime.util")

local bufferline = require("bufferline.theme")

-- Load the theme
local set = function()
	util.load()
end

return { set = set, bufferline = bufferline }

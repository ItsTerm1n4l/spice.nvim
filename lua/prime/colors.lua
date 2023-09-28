local named_colors = require("prime.named_colors")

local dark_colors = {
	prime0_gui = named_colors.background, -- prime0 in palette
	prime1_gui = named_colors.black, -- prime1 in palette
	prime2_gui = named_colors.gray, -- prime2 in palette
	prime3_gui = named_colors.light_gray, -- prime3 in palette
	prime3_gui_bright = named_colors.light_gray_bright, -- out of palette
	prime4_gui = named_colors.darkest_white, -- prime4 in palette
	prime5_gui = named_colors.altwhite, -- prime5 in palette
	prime6_gui = named_colors.white, -- prime6 in palette
	prime7_gui = named_colors.cyan, -- prime7 in palette
	prime8_gui = named_colors.altcyan, -- prime8 in palette
	prime9_gui = named_colors.altblue, -- prime9 in palette
	prime10_gui = named_colors.blue, -- prime10 in palette
	prime11_gui = named_colors.red, -- prime11 in palette
	prime12_gui = named_colors.yellow, -- prime12 in palette
	prime13_gui = named_colors.altyellow, -- prime13 in palette
	prime14_gui = named_colors.green, -- prime14 in palette
	prime15_gui = named_colors.magenta, -- prime15 in palette
	none = "NONE",
}

local light_colors = {
	prime0_gui = named_colors.white, -- prime0 in palette
	prime1_gui = named_colors.darker_white, -- prime1 in palette
	prime2_gui = named_colors.darkest_white, -- prime2 in palette
	prime3_gui = named_colors.light_gray, -- prime3 in palette
	prime3_gui_bright = named_colors.light_gray_bright, -- out of palette
	prime4_gui = named_colors.gray, -- prime4 in palette
	prime5_gui = named_colors.dark_gray, -- prime5 in palette
	prime6_gui = named_colors.black, -- prime6 in palette

	-- Same colors across light and dark from here down...
	prime7_gui = named_colors.teal, -- prime7 in palette
	prime8_gui = named_colors.off_blue, -- prime8 in palette
	prime9_gui = named_colors.glacier, -- prime9 in palette
	prime10_gui = named_colors.blue, -- prime10 in palette
	prime11_gui = named_colors.red, -- prime11 in palette
	prime12_gui = named_colors.orange, -- prime12 in palette
	prime13_gui = named_colors.yellow, -- prime13 in palette
	prime14_gui = named_colors.green, -- prime14 in palette
	prime15_gui = named_colors.purple, -- prime15 in palette
	none = "NONE",
}

local prime = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.prime_contrast then
	prime.sidebar = prime.prime1_gui
	prime.float = prime.prime1_gui
else
	prime.sidebar = prime.prime0_gui
	prime.float = prime.prime0_gui
end

if vim.g.prime_cursorline_transparent then
	prime.cursorlinefg = prime.prime0_gui
else
	prime.cursorlinefg = prime.prime1_gui
end

return prime

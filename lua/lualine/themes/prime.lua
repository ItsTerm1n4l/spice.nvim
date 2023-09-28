local colors = require("prime.colors")

local prime = {}

prime.normal = {
	a = { fg = colors.prime1_gui, bg = colors.prime9_gui },
	b = { fg = colors.prime5_gui, bg = colors.prime2_gui },
	c = { fg = colors.prime4_gui, bg = colors.prime1_gui },
}

prime.insert = {
	a = { fg = colors.prime1_gui, bg = colors.prime4_gui },
	b = { fg = colors.prime6_gui, bg = colors.prime2_gui },
	y = {  fg = colors.prime5_gui, bg = colors.prime2_gui },
}

prime.visual = {
	a = { fg = colors.prime0_gui, bg = colors.prime7_gui },
	b = { fg = colors.prime4_gui, bg = colors.prime2_gui },
	y = {  fg = colors.prime5_gui, bg = colors.prime2_gui },
}

prime.replace = {
	a = { fg = colors.prime0_gui, bg = colors.prime11_gui },
	b = { fg = colors.prime4_gui, bg = colors.prime2_gui },
	y = {  fg = colors.prime5_gui, bg = colors.prime2_gui },
}

prime.command = {
	a = { fg = colors.prime0_gui, bg = colors.prime15_gui, gui = "bold" },
	b = { fg = colors.prime4_gui, bg = colors.prime2_gui },
	y = {  fg = colors.prime5_gui, bg = colors.prime2_gui },
}

prime.inactive = {
	a = { fg = colors.prime4_gui, bg = colors.prime0_gui, gui = "bold" },
	b = { fg = colors.prime4_gui, bg = colors.prime0_gui },
	c = { fg = colors.prime4_gui, bg = colors.prime1_gui },
}

return prime

local prime = require("prime.colors")

local theme = {}

local italic = vim.g.prime_italic == false and prime.none or "italic"
local italic_undercurl = vim.g.prime_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.prime_bold == false and prime.none or "bold"
local reverse_bold = vim.g.prime_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.prime_bold == false and "underline" or "bold,underline"
local bold_italic;
if vim.g.prime_bold == false then
	bold_italic = vim.g.prime_italic == false and prime.none or "italic"
elseif vim.g.prime_italic == false then
	bold_italic = "bold"
else
	bold_italic = "bold,italic"
end

theme.loadSyntax = function()
	-- Syntax highlight groups
	return {
		Type = { fg = prime.prime9_gui }, -- int, long, char, etc.
		StorageClass = { fg = prime.prime9_gui }, -- static, register, volatile, etc.
		Structure = { fg = prime.prime9_gui }, -- struct, union, enum, etc.
		Constant = { fg = prime.prime4_gui }, -- any constant
		Character = { fg = prime.prime14_gui }, -- any character constant: 'c', '\n'
		Number = { fg = prime.prime15_gui }, -- a number constant: 5
		Boolean = { fg = prime.prime9_gui }, -- a boolean constant: TRUE, false
		Float = { fg = prime.prime15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = prime.prime9_gui }, -- any statement
		Label = { fg = prime.prime9_gui }, -- case, default, etc.
		Operator = { fg = prime.prime9_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = prime.prime9_gui }, -- try, catch, throw
		PreProc = { fg = prime.prime9_gui }, -- generic Preprocessor
		Include = { fg = prime.prime9_gui }, -- preprocessor #include
		Define = { fg = prime.prime9_gui }, -- preprocessor #define
		Macro = { fg = prime.prime9_gui }, -- same as Define
		Typedef = { fg = prime.prime9_gui }, -- A typedef
		PreCondit = { fg = prime.prime13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = prime.prime4_gui }, -- any special symbol
		SpecialChar = { fg = prime.prime13_gui }, -- special character in a constant
		Tag = { fg = prime.prime4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = prime.prime6_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = prime.prime8_gui }, -- special things inside a comment
		Debug = { fg = prime.prime11_gui }, -- debugging statements
		Underlined = { fg = prime.prime14_gui, bg = prime.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = prime.prime1_gui }, -- left blank, hidden
		Todo = { fg = prime.prime13_gui, bg = prime.none, style = bold_italic }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = prime.none, bg = prime.prime0_gui },
		htmlLink = { fg = prime.prime14_gui, style = "underline" },
		markdownH1Delimiter = { fg = prime.prime8_gui },
		markdownH2Delimiter = { fg = prime.prime11_gui },
		markdownH3Delimiter = { fg = prime.prime14_gui },
		htmlH1 = { fg = prime.prime8_gui, style = bold },
		htmlH2 = { fg = prime.prime11_gui, style = bold },
		htmlH3 = { fg = prime.prime14_gui, style = bold },
		htmlH4 = { fg = prime.prime15_gui, style = bold },
		htmlH5 = { fg = prime.prime9_gui, style = bold },
		markdownH1 = { fg = prime.prime8_gui, style = bold },
		markdownH2 = { fg = prime.prime11_gui, style = bold },
		markdownH3 = { fg = prime.prime14_gui, style = bold },
		Error = { fg = prime.prime11_gui, bg = prime.none, style = bold_underline }, -- any erroneous construct with bold
		Comment = { fg = prime.prime3_gui_bright, style = italic }, -- italic comments
		Conditional = { fg = prime.prime9_gui, style = italic }, -- italic if, then, else, endif, switch, etc.
		Function = { fg = prime.prime8_gui, style = italic }, -- italic funtion names
		Identifier = { fg = prime.prime9_gui, style = italic }, -- any variable name
		Keyword = { fg = prime.prime9_gui, style = italic }, -- italic for, do, while, etc.
		Repeat = { fg = prime.prime9_gui, style = italic }, -- italic any other keyword
		String = { fg = prime.prime14_gui, style = italic }, -- any string
	}
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = prime.prime4_gui, bg = prime.float }, -- normal text and background color
		FloatBorder = { fg = prime.prime4_gui, bg = prime.float }, -- normal text and background color
		ColorColumn = { fg = prime.none, bg = prime.prime1_gui }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = prime.prime1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = prime.prime4_gui, bg = prime.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = prime.prime5_gui, bg = prime.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = prime.prime7_gui, bg = prime.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = prime.prime1_gui },
		ErrorMsg = { fg = prime.none },
		Folded = { fg = prime.prime3_gui_bright, bg = prime.none, style = italic },
		FoldColumn = { fg = prime.prime7_gui },
		IncSearch = { fg = prime.prime6_gui, bg = prime.prime10_gui },
		LineNr = { fg = prime.prime3_gui_bright },
		CursorLineNr = { fg = prime.prime4_gui },
		MatchParen = { fg = prime.prime15_gui, bg = prime.none, style = bold },
		ModeMsg = { fg = prime.prime4_gui },
		MoreMsg = { fg = prime.prime4_gui },
		NonText = { fg = prime.prime1_gui },
		Pmenu = { fg = prime.prime4_gui, bg = prime.prime2_gui },
		PmenuSel = { fg = prime.prime4_gui, bg = prime.prime10_gui },
		PmenuSbar = { fg = prime.prime4_gui, bg = prime.prime2_gui },
		PmenuThumb = { fg = prime.prime4_gui, bg = prime.prime4_gui },
		Question = { fg = prime.prime14_gui },
		QuickFixLine = { fg = prime.prime4_gui, bg = prime.none, style = "reverse" },
		qfLineNr = { fg = prime.prime4_gui, bg = prime.none, style = "reverse" },
		Search = { fg = prime.prime6_gui, bg = prime.prime10_gui },
		Substitute = { fg = prime.prime0_gui, bg = prime.prime12_gui },
		SpecialKey = { fg = prime.prime9_gui },
		SpellBad = { fg = prime.prime11_gui, bg = prime.none, style = italic_undercurl },
		SpellCap = { fg = prime.prime7_gui, bg = prime.none, style = italic_undercurl },
		SpellLocal = { fg = prime.prime8_gui, bg = prime.none, style = italic_undercurl },
		SpellRare = { fg = prime.prime9_gui, bg = prime.none, style = italic_undercurl },
		StatusLine = { fg = prime.prime4_gui, bg = prime.prime2_gui },
		StatusLineNC = { fg = prime.prime4_gui, bg = prime.prime1_gui },
		StatusLineTerm = { fg = prime.prime4_gui, bg = prime.prime2_gui },
		StatusLineTermNC = { fg = prime.prime4_gui, bg = prime.prime1_gui },
		TabLineFill = { fg = prime.prime4_gui, bg = prime.none },
		TablineSel = { fg = prime.prime1_gui, bg = prime.prime9_gui },
		Tabline = { fg = prime.prime4_gui, bg = prime.prime1_gui },
		Title = { fg = prime.prime14_gui, bg = prime.none, style = bold },
		Visual = { fg = prime.none, bg = prime.prime2_gui },
		VisualNOS = { fg = prime.none, bg = prime.prime2_gui },
		WarningMsg = { fg = prime.prime15_gui },
		WildMenu = { fg = prime.prime12_gui, bg = prime.none, style = bold },
		CursorColumn = { fg = prime.none, bg = prime.cursorlinefg },
		CursorLine = { fg = prime.none, bg = prime.cursorlinefg },
		ToolbarLine = { fg = prime.prime4_gui, bg = prime.prime1_gui },
		ToolbarButton = { fg = prime.prime4_gui, bg = prime.none, style = bold },
		NormalMode = { fg = prime.prime4_gui, bg = prime.none, style = "reverse" },
		InsertMode = { fg = prime.prime14_gui, bg = prime.none, style = "reverse" },
		ReplacelMode = { fg = prime.prime11_gui, bg = prime.none, style = "reverse" },
		VisualMode = { fg = prime.prime9_gui, bg = prime.none, style = "reverse" },
		CommandMode = { fg = prime.prime4_gui, bg = prime.none, style = "reverse" },
		Warnings = { fg = prime.prime15_gui },

		healthError = { fg = prime.prime11_gui },
		healthSuccess = { fg = prime.prime14_gui },
		healthWarning = { fg = prime.prime15_gui },

		-- dashboard
		DashboardShortCut = { fg = prime.prime7_gui },
		DashboardHeader = { fg = prime.prime9_gui },
		DashboardCenter = { fg = prime.prime8_gui },
		DashboardFooter = { fg = prime.prime14_gui, style = italic },

		-- Barbar
		BufferTabpageFill = { bg = prime.prime0_gui },

		BufferCurrent = { bg = prime.prime1_gui },
		BufferCurrentMod = { bg = prime.prime1_gui, fg = prime.prime15_gui },
		BufferCurrentIcon = { bg = prime.prime1_gui },
		BufferCurrentSign = { bg = prime.prime1_gui },
		BufferCurrentIndex = { bg = prime.prime1_gui },
		BufferCurrentTarget = { bg = prime.prime1_gui, fg = prime.prime11_gui },

		BufferInactive = { bg = prime.prime0_gui, fg = prime.prime3_gui },
		BufferInactiveMod = { bg = prime.prime0_gui, fg = prime.prime15_gui },
		BufferInactiveIcon = { bg = prime.prime0_gui, fg = prime.prime3_gui },
		BufferInactiveSign = { bg = prime.prime0_gui, fg = prime.prime3_gui },
		BufferInactiveIndex = { bg = prime.prime0_gui, fg = prime.prime3_gui },
		BufferInactiveTarget = { bg = prime.prime0_gui, fg = prime.prime11_gui },

		BufferVisible = { bg = prime.prime2_gui },
		BufferVisibleMod = { bg = prime.prime2_gui, fg = prime.prime15_gui },
		BufferVisibleIcon = { bg = prime.prime2_gui },
		BufferVisibleSign = { bg = prime.prime2_gui },
		BufferVisibleIndex = { bg = prime.prime2_gui },
		BufferVisibleTarget = { bg = prime.prime2_gui, fg = prime.prime11_gui },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = prime.prime3_gui },
		NotifyDEBUGIcon = { fg = prime.prime3_gui },
		NotifyDEBUGTitle = { fg = prime.prime3_gui },
		NotifyERRORBorder = { fg = prime.prime11_gui },
		NotifyERRORIcon = { fg = prime.prime11_gui },
		NotifyERRORTitle = { fg = prime.prime11_gui },
		NotifyINFOBorder = { fg = prime.prime14_gui },
		NotifyINFOIcon = { fg = prime.prime14_gui },
		NotifyINFOTitle = { fg = prime.prime14_gui },
		NotifyTRACEBorder = { fg = prime.prime15_gui },
		NotifyTRACEIcon = { fg = prime.prime15_gui },
		NotifyTRACETitle = { fg = prime.prime15_gui },
		NotifyWARNBorder = { fg = prime.prime13_gui },
		NotifyWARNIcon = { fg = prime.prime13_gui },
		NotifyWARNTitle = { fg = prime.prime13_gui },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = prime.prime13_gui },
		LeapLabelPrimary = { style = "nocombine", fg = prime.prime0_gui, bg = prime.prime13_gui },
		LeapLabelSecondary = { style = "nocombine", fg = prime.prime0_gui, bg = prime.prime15_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.prime_disable_background then
		editor.Normal = { fg = prime.prime4_gui, bg = prime.none } -- normal text and background color
		editor.SignColumn = { fg = prime.prime4_gui, bg = prime.none }
	else
		editor.Normal = { fg = prime.prime4_gui, bg = prime.prime0_gui } -- normal text and background color
		editor.SignColumn = { fg = prime.prime4_gui, bg = prime.prime0_gui }
	end

	-- Remove window split borders
	if vim.g.prime_borders then
		editor.VertSplit = { fg = prime.prime2_gui }
	else
		editor.VertSplit = { fg = prime.prime0_gui }
	end

	if vim.g.prime_uniform_diff_background then
		editor.DiffAdd = { fg = prime.prime14_gui, bg = prime.prime1_gui } -- diff mode: Added line
		editor.DiffChange = { fg = prime.prime13_gui, bg = prime.prime1_gui } -- diff mode: Changed line
		editor.DiffDelete = { fg = prime.prime11_gui, bg = prime.prime1_gui } -- diff mode: Deleted line
		editor.DiffText = { fg = prime.prime15_gui, bg = prime.prime1_gui } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = prime.prime14_gui, bg = prime.none, style = "reverse" } -- diff mode: Added line
		editor.DiffChange = { fg = prime.prime13_gui, bg = prime.none, style = "reverse" } -- diff mode: Changed line
		editor.DiffDelete = { fg = prime.prime11_gui, bg = prime.none, style = "reverse" } -- diff mode: Deleted line
		editor.DiffText = { fg = prime.prime15_gui, bg = prime.none, style = "reverse" } -- diff mode: Changed text within a changed line
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = prime.prime1_gui
	vim.g.terminal_color_1 = prime.prime11_gui
	vim.g.terminal_color_2 = prime.prime14_gui
	vim.g.terminal_color_3 = prime.prime13_gui
	vim.g.terminal_color_4 = prime.prime9_gui
	vim.g.terminal_color_5 = prime.prime15_gui
	vim.g.terminal_color_6 = prime.prime8_gui
	vim.g.terminal_color_7 = prime.prime5_gui
	vim.g.terminal_color_8 = prime.prime3_gui
	vim.g.terminal_color_9 = prime.prime11_gui
	vim.g.terminal_color_10 = prime.prime14_gui
	vim.g.terminal_color_11 = prime.prime13_gui
	vim.g.terminal_color_12 = prime.prime9_gui
	vim.g.terminal_color_13 = prime.prime15_gui
	vim.g.terminal_color_14 = prime.prime7_gui
	vim.g.terminal_color_15 = prime.prime6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSConstructor = { fg = prime.prime9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = prime.prime13_gui }, -- For constants
		TSFloat = { fg = prime.prime15_gui }, -- For floats
		TSNumber = { fg = prime.prime15_gui }, -- For all number
		TSAttribute = { fg = prime.prime15_gui }, -- (unstable) TODO: docs
		TSError = { fg = prime.prime11_gui }, -- For syntax/parser errors.
		TSException = { fg = prime.prime15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = prime.prime7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = prime.prime9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = prime.prime15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = prime.prime9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = prime.prime10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = prime.prime10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = prime.prime8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = prime.prime8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = prime.prime8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = prime.prime15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = prime.prime9_gui }, -- For types.
		TSTypeBuiltin = { fg = prime.prime9_gui }, -- For builtin types.
		TSTag = { fg = prime.prime4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = prime.prime15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = prime.prime4_gui }, -- For strings consideprime11_gui text in a markup language.
		TSTextReference = { fg = prime.prime15_gui }, -- FIXME
		TSEmphasis = { fg = prime.prime10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = prime.prime4_gui, bg = prime.none, style = "underline" }, -- For text to be represented with an underline.
		TSLiteral = { fg = prime.prime4_gui }, -- Literal text.
		TSURI = { fg = prime.prime14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = prime.prime11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		["@constructor"] = { fg = prime.prime9_gui },
		["@constant"] = { fg = prime.prime13_gui },
		["@float"] = { fg = prime.prime15_gui },
		["@number"] = { fg = prime.prime15_gui },
		["@attribute"] = { fg = prime.prime15_gui },
		["@error"] = { fg = prime.prime11_gui },
		["@exception"] = { fg = prime.prime15_gui },
		["@funtion.macro"] = { fg = prime.prime7_gui },
		["@include"] = { fg = prime.prime9_gui },
		["@label"] = { fg = prime.prime15_gui },
		["@operator"] = { fg = prime.prime9_gui },
		["@parameter"] = { fg = prime.prime10_gui },
		["@punctuation.delimiter"] = { fg = prime.prime8_gui },
		["@punctuation.bracket"] = { fg = prime.prime8_gui },
		["@punctuation.special"] = { fg = prime.prime8_gui },
		["@symbol"] = { fg = prime.prime15_gui },
		["@type"] = { fg = prime.prime9_gui },
		["@type.builtin"] = { fg = prime.prime9_gui },
		["@tag"] = { fg = prime.prime4_gui },
		["@tag.delimiter"] = { fg = prime.prime15_gui },
		["@text"] = { fg = prime.prime4_gui },
		["@text.reference"] = { fg = prime.prime15_gui, style = bold },
		["@text.emphasis"] = { fg = prime.prime10_gui, style = italic },
		["@text.underline"] = { fg = prime.prime4_gui, bg = prime.none, style = "underline" },
		["@text.literal"] = { fg = prime.prime4_gui },
		["@text.uri"] = { fg = prime.prime14_gui, style = "underline" },
		["@text.strike"] = { fg = prime.prime4_gui, style = "strikethrough" },
		["@text.math"] = { fg = prime.prime7_gui },

		-- @todo Missing highlights
		-- @function.call
		-- @method.call
		-- @type.qualifier
		-- @text.math (e.g. for LaTeX math environments)
		-- @text.environment (e.g. for text environments of markup languages)
		-- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
		-- @text.note
		-- @text.warning
		-- @text.danger
		-- @tag.attribute
		-- @string.special
	}

	treesitter.TSVariableBuiltin = { fg = prime.prime4_gui, style = bold }
	treesitter.TSBoolean = { fg = prime.prime9_gui, style = bold }
	treesitter.TSConstBuiltin = { fg = prime.prime7_gui, style = bold }
	treesitter.TSConstMacro = { fg = prime.prime7_gui, style = bold }
	treesitter.TSVariable = { fg = prime.prime4_gui, style = bold }
	treesitter.TSTitle = { fg = prime.prime10_gui, bg = prime.none, style = bold }
	treesitter["@variable"] = { fg = prime.prime4_gui, style = bold }
	treesitter["@variable.builtin"] = { fg = prime.prime4_gui, style = bold }
	treesitter["@variable.global"] = { fg = prime.prime4_gui, style = bold }
	treesitter["@boolean"] = { fg = prime.prime9_gui, style = bold }
	treesitter["@constant.builtin"] = { fg = prime.prime7_gui, style = bold }
	treesitter["@constant.macro"] = { fg = prime.prime7_gui, style = bold }
	treesitter["@text.title"] = { fg = prime.prime10_gui, bg = prime.none, style = bold }
	treesitter["@text.strong"] = { fg = prime.prime10_gui, bg = prime.none, style = bold }
	-- Comments
	treesitter.TSComment = { fg = prime.prime3_gui_bright, style = italic }
	-- Conditionals
	treesitter.TSConditional = { fg = prime.prime9_gui, style = italic } -- For keywords related to conditionnals.
	-- Function names
	treesitter.TSFunction = { fg = prime.prime8_gui, style = italic } -- For fuction (calls and definitions).
	treesitter.TSMethod = { fg = prime.prime7_gui, style = italic } -- For method calls and definitions.
	treesitter.TSFuncBuiltin = { fg = prime.prime8_gui, style = italic }
	-- Namespaces and property accessors
	treesitter.TSNamespace = { fg = prime.prime4_gui, style = italic } -- For identifiers referring to modules and namespaces.
	treesitter.TSField = { fg = prime.prime4_gui, style = italic } -- For fields.
	treesitter.TSProperty = { fg = prime.prime10_gui, style = italic } -- Same as `TSField`, but when accessing, not declaring.
	-- Language keywords
	treesitter.TSKeyword = { fg = prime.prime9_gui, style = italic } -- For keywords that don't fall in other categories.
	treesitter.TSKeywordFunction = { fg = prime.prime8_gui, style = italic }
	treesitter.TSKeywordReturn = { fg = prime.prime8_gui, style = italic }
	treesitter.TSKeywordOperator = { fg = prime.prime8_gui, style = italic }
	treesitter.TSRepeat = { fg = prime.prime9_gui, style = italic } -- For keywords related to loops.
	-- Strings
	treesitter.TSString = { fg = prime.prime14_gui, style = italic } -- For strings.
	treesitter.TSStringRegex = { fg = prime.prime7_gui, style = italic } -- For regexes.
	treesitter.TSStringEscape = { fg = prime.prime15_gui, style = italic } -- For escape characters within a string.
	treesitter.TSCharacter = { fg = prime.prime14_gui, style = italic } -- For characters.

	treesitter["@comment"] = { fg = prime.prime3_gui_bright, style = italic }
	treesitter["@conditional"] = { fg = prime.prime9_gui, style = italic }
	treesitter["@function"] = { fg = prime.prime8_gui, style = italic }
	treesitter["@method"] = { fg = prime.prime8_gui, style = italic }
	treesitter["@function.builtin"] = { fg = prime.prime8_gui, style = italic }
	treesitter["@namespace"] = { fg = prime.prime4_gui, style = italic }
	treesitter["@field"] = { fg = prime.prime4_gui, style = italic }
	treesitter["@property"] = { fg = prime.prime10_gui, style = italic }
	treesitter["@keyword"] = { fg = prime.prime9_gui, style = italic }
	treesitter["@keyword.function"] = { fg = prime.prime8_gui, style = italic }
	treesitter["@keyword.return"] = { fg = prime.prime8_gui, style = italic }
	treesitter["@keyword.operator"] = { fg = prime.prime8_gui, style = italic }
	treesitter["@repeat"] = { fg = prime.prime9_gui, style = italic }
	treesitter["@string"] = { fg = prime.prime14_gui, style = italic }
	treesitter["@string.regex"] = { fg = prime.prime7_gui, style = italic }
	treesitter["@string.escape"] = { fg = prime.prime15_gui, style = italic }
	treesitter["@character"] = { fg = prime.prime14_gui, style = italic }

	return treesitter
end

theme.loadFiletypes = function()
	-- Filetype-specific highlight groups

	local ft = {
		-- yaml
		yamlBlockMappingKey = { fg = prime.prime7_gui },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = prime.prime7_gui },
		yamlTSString = { fg = prime.prime4_gui },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = prime.prime7_gui }, -- stephpy/vim-yaml
	}

	return ft
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = prime.prime11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = prime.prime11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = prime.prime11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = prime.prime11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = prime.prime11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = prime.prime15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = prime.prime15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = prime.prime15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = prime.prime15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = prime.prime15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = prime.prime10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = prime.prime10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = prime.prime10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = prime.prime10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = prime.prime10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = prime.prime9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = prime.prime9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = prime.prime9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = prime.prime9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = prime.prime10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = prime.prime4_gui, bg = prime.prime1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = prime.prime4_gui, bg = prime.prime1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = prime.prime4_gui, bg = prime.prime1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = prime.prime4_gui },
		LspTroubleCount = { fg = prime.prime9_gui, bg = prime.prime10_gui },
		LspTroubleNormal = { fg = prime.prime4_gui, bg = prime.sidebar },

		-- Diff
		diffAdded = { fg = prime.prime14_gui },
		diffRemoved = { fg = prime.prime11_gui },
		diffChanged = { fg = prime.prime15_gui },
		diffOldFile = { fg = prime.yelow },
		diffNewFile = { fg = prime.prime12_gui },
		diffFile = { fg = prime.prime7_gui },
		diffLine = { fg = prime.prime3_gui },
		diffIndexLine = { fg = prime.prime9_gui },

		-- Neogit
		NeogitBranch = { fg = prime.prime10_gui },
		NeogitRemote = { fg = prime.prime9_gui },
		NeogitHunkHeader = { fg = prime.prime8_gui },
		NeogitHunkHeaderHighlight = { fg = prime.prime8_gui, bg = prime.prime1_gui },
		NeogitDiffContextHighlight = { bg = prime.prime1_gui },
		NeogitDiffDeleteHighlight = { fg = prime.prime11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = prime.prime14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = prime.prime14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = prime.prime13_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = prime.prime11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = prime.prime14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = prime.prime14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = prime.prime14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = prime.prime13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = prime.prime13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = prime.prime13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = prime.prime11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = prime.prime11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = prime.prime11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = prime.prime3_gui_bright, style = bold },

		-- Telescope
		TelescopePromptBorder = { fg = prime.prime4_gui },
		TelescopeResultsBorder = { fg = prime.prime4_gui },
		TelescopePreviewBorder = { fg = prime.prime4_gui },
		TelescopeSelectionCaret = { fg = prime.prime9_gui },
		TelescopeSelection = { fg = prime.prime6_gui, bg = prime.prime2_gui },
		TelescopeMatching = { link = 'Search' },

		-- NvimTree
		NvimTreeRootFolder = { fg = prime.prime15_gui },
		NvimTreeSymlink = { fg = prime.prime5_gui },
		NvimTreeFolderName = { fg = prime.prime4_gui },
		NvimTreeFolderIcon = { fg = prime.prime9_gui },
		NvimTreeEmptyFolderName = { fg = prime.prime4_gui },
		NvimTreeOpenedFolderName = { fg = prime.prime5_gui },
		NvimTreeExecFile = { fg = prime.prime4_gui },
		NvimTreeOpenedFile = { fg = prime.prime6_gui },
		NvimTreeSpecialFile = { fg = prime.prime4_gui, style = bold},
		NvimTreeImageFile = { fg = prime.prime4_gui },
		NvimTreeMarkdownFile = { fg = prime.prime4_gui },
		NvimTreeIndentMarker = { fg = prime.prime9_gui },
		NvimTreeGitDirty = { fg = prime.prime13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitStaged = { fg = prime.prime13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitMerge = { fg = prime.prime13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitRenamed = { fg = prime.prime13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitNew = { fg = prime.prime14_gui }, -- diff mode: Added line |diff.txt|
		NvimTreeGitDeleted = { fg = prime.prime11_gui },	-- diff mode: Deleted line |diff.txt|
		NvimTreeGitIgnored = { fg = prime.prime3_gui_bright },
		LspDiagnosticsError = { fg = prime.prime12_gui },
		LspDiagnosticsWarning = { fg = prime.prime15_gui },
		LspDiagnosticsInformation = { fg = prime.prime10_gui },
		LspDiagnosticsHint = { fg = prime.prime9_gui },

		-- WhichKey
		WhichKey = { fg = prime.prime8_gui, style = bold },
		WhichKeyGroup = { fg = prime.prime5_gui },
		WhichKeyDesc = { fg = prime.prime7_gui, style = italic },
		WhichKeySeperator = { fg = prime.prime9_gui },
		WhichKeyFloating = { bg = prime.prime1_gui },
		WhichKeyFloat = { bg = prime.prime1_gui },
		WhichKeyValue = { fg = prime.prime7_gui },

		-- LspSaga
		DiagnosticError = { fg = prime.prime12_gui },
		DiagnosticWarning = { fg = prime.prime15_gui },
		DiagnosticInformation = { fg = prime.prime10_gui },
		DiagnosticHint = { fg = prime.prime9_gui },
		DiagnosticTruncateLine = { fg = prime.prime4_gui },
		LspFloatWinBorder = { fg = prime.prime4_gui, bg = prime.float },
		LspSagaDefPreviewBorder = { fg = prime.prime4_gui, bg = prime.float },
		DefinitionIcon = { fg = prime.prime7_gui },
		TargetWord = { fg = prime.prime6_gui, style = 'bold' },
		-- LspSaga code action
		LspSagaCodeActionTitle = { link = 'Title' },
		LspSagaCodeActionBorder = { fg = prime.prime4_gui, bg = prime.float },
		LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
		LspSagaCodeActionContent = { fg = prime.prime4_gui },
		-- LspSag finder
		LspSagaLspFinderBorder = { fg = prime.prime4_gui, bg = prime.float },
		LspSagaAutoPreview = { fg = prime.prime4_gui },
		LspSagaFinderSelection = { fg = prime.prime6_gui, bg = prime.prime2_gui },
		TargetFileName = { fg = prime.prime4_gui },
		FinderParam = { fg = prime.prime15_gui, bold = true },
		FinderVirtText = { fg = prime.prime15_gui15 , bg = prime.none },
		DefinitionsIcon = { fg = prime.prime9_gui },
		Definitions = { fg = prime.prime15_gui, bold = true },
		DefinitionCount = { fg = prime.prime10_gui },
		ReferencesIcon = { fg = prime.prime9_gui },
		References = { fg = prime.prime15_gui, bold = true },
		ReferencesCount = { fg = prime.prime10_gui },
		ImplementsIcon = { fg = prime.prime9_gui },
		Implements = { fg = prime.prime15_gui, bold = true },
		ImplementsCount = { fg = prime.prime10_gui },
		-- LspSaga finder spinner
		FinderSpinnerBorder = { fg = prime.prime4_gui, bg = prime.float },
		FinderSpinnerTitle = { link = 'Title' },
		FinderSpinner = { fg = prime.prime8_gui, bold = true },
		FinderPreviewSearch = { link = 'Search' },
		-- LspSaga definition
		DefinitionBorder = { fg = prime.prime4_gui, bg = prime.float },
		DefinitionArrow = { fg = prime.prime8_gui },
		DefinitionSearch = { link = 'Search' },
		DefinitionFile = { fg = prime.prime4_gui, bg = prime.float },
		-- LspSaga hover
		LspSagaHoverBorder = { fg = prime.prime4_gui, bg = prime.float },
		LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },
		-- Lsp rename
		LspSagaRenameBorder = { fg = prime.prime4_gui, bg = prime.float },
		LspSagaRenameMatch = { fg = prime.prime6_gui, bg = prime.prime9_gui },
		-- Lsp diagnostic
		LspSagaDiagnosticSource = { link = 'Comment' },
		LspSagaDiagnosticError = { link = 'DiagnosticError' },
		LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
		LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
		LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
		LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
		LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
		LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
		LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
		LspSagaDiagnosticBorder = { fg = prime.prime4_gui, bg = prime.float },
		LspSagaDiagnosticHeader = { fg = prime.prime4_gui },
		DiagnosticQuickFix = { fg = prime.prime14_gui, bold = true },
		DiagnosticMap = { fg = prime.prime15_gui },
		DiagnosticLineCol = { fg = prime.prime4_gui },
		LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
		ColInLineDiagnostic = { link = 'Comment' },
		-- LspSaga signture help
		LspSagaSignatureHelpBorder = { fg = prime.prime4_gui, bg = prime.float },
		LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },
		-- Lspsaga lightbulb
		LspSagaLightBulb = { link = 'DiagnosticSignHint' },
		-- LspSaga shadow
		SagaShadow = { fg = 'black' },
		-- LspSaga float
		LspSagaBorderTitle = { link = 'Title' },
		-- LspSaga Outline
		LSOutlinePreviewBorder = { fg = prime.prime4_gui, bg = prime.float },
		OutlineIndentEvn = { fg = prime.prime15_gui },
		OutlineIndentOdd = { fg = prime.prime12_gui },
		OutlineFoldPrefix = { fg = prime.prime11_gui },
		OutlineDetail = { fg = prime.prime4_gui },
		-- LspSaga all floatwindow
		LspFloatWinNormal = { fg = prime.prime4_gui, bg = prime.float },
		-- Saga End

		-- Sneak
		Sneak = { fg = prime.prime0_gui, bg = prime.prime4_gui },
		SneakScope = { bg = prime.prime1_gui },

		-- Cmp
		CmpItemKind = { fg = prime.prime15_gui },
		CmpItemAbbrMatch = { fg = prime.prime5_gui, style = bold },
		CmpItemAbbrMatchFuzzy = { fg = prime.prime5_gui, style = bold },
		CmpItemAbbr = { fg = prime.prime4_gui },
		CmpItemMenu = { fg = prime.prime14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = prime.prime3_gui },
		IndentBlanklineContextChar = { fg = prime.prime10_gui },

		-- headline
		-- bg = (10 * prime0 + fg) / 11
		Headline1 = { fg = prime.prime12_gui, bg = "#3d3c44", bold = true },
		Headline2 = { fg = prime.prime13_gui, bg = "#3f4247", bold = true },
		Headline3 = { fg = prime.prime14_gui, bg = "#394147", bold = true },
		Headline4 = { fg = prime.prime9_gui, bg = "#363e4c", bold = true },
		Headline5 = { fg = prime.prime15_gui, bg = "#3a3c4a", bold = true },
		Headline6 = { fg = prime.prime4_gui, bg = "#3d434f", bold = true },

		Quote = { fg = prime.prime2_gui },
		CodeBlock = { bg = prime.prime1_gui },
		Dash = { prime.prime10_gui, bold = true },

		-- Illuminate
		illuminatedWord = { bg = prime.prime3_gui },
		illuminatedCurWord = { bg = prime.prime3_gui },
		IlluminatedWordText = { bg = prime.prime3_gui },
		IlluminatedWordRead = { bg = prime.prime3_gui },
		IlluminatedWordWrite = { bg = prime.prime3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = prime.prime14_gui },
		DapStopped = { fg = prime.prime15_gui },

		-- nvim-dap-ui
		DapUIVariable = { fg = prime.prime4_gui },
		DapUIScope = { fg = prime.prime8_gui },
		DapUIType = { fg = prime.prime9_gui },
		DapUIValue = { fg = prime.prime4_gui },
		DapUIModifiedValue = { fg = prime.prime8_gui },
		DapUIDecoration = { fg = prime.prime8_gui },
		DapUIThread = { fg = prime.prime8_gui },
		DapUIStoppedThread = { fg = prime.prime8_gui },
		DapUIFrameName = { fg = prime.prime4_gui },
		DapUISource = { fg = prime.prime9_gui },
		DapUILineNumber = { fg = prime.prime8_gui },
		DapUIFloatBorder = { fg = prime.prime8_gui },
		DapUIWatchesEmpty = { fg = prime.prime11_gui },
		DapUIWatchesValue = { fg = prime.prime8_gui },
		DapUIWatchesError = { fg = prime.prime11_gui },
		DapUIBreakpointsPath = { fg = prime.prime8_gui },
		DapUIBreakpointsInfo = { fg = prime.prime8_gui },
		DapUIBreakpointsCurrentLine = { fg = prime.prime8_gui },
		DapUIBreakpointsLine = { fg = prime.prime8_gui },

		-- Hop
		HopNextKey = { fg = prime.prime4_gui, style = bold },
		HopNextKey1 = { fg = prime.prime8_gui, style = bold },
		HopNextKey2 = { fg = prime.prime4_gui },
		HopUnmatched = { fg = prime.prime3_gui },

		-- Fern
		FernBranchText = { fg = prime.prime3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = prime.prime15_gui },
		rainbowcol2 = { fg = prime.prime13_gui },
		rainbowcol3 = { fg = prime.prime11_gui },
		rainbowcol4 = { fg = prime.prime7_gui },
		rainbowcol5 = { fg = prime.prime8_gui },
		rainbowcol6 = { fg = prime.prime15_gui },
		rainbowcol7 = { fg = prime.prime13_gui },

		-- lightspeed
		LightspeedLabel = { fg = prime.prime8_gui, style = bold },
		LightspeedLabelOverlapped = { fg = prime.prime8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = prime.prime15_gui, style = bold },
		LightspeedLabelDistantOverlapped = { fg = prime.prime15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = prime.prime10_gui, style = bold },
		LightspeedShortcutOverlapped = { fg = prime.prime10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = prime.prime4_gui, bg = prime.prime2_gui, style = bold },
		LightspeedGreyWash = { fg = prime.prime3_gui_bright },
		LightspeedUnlabeledMatch = { fg = prime.prime4_gui, bg = prime.prime1_gui },
		LightspeedOneCharMatch = { fg = prime.prime8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = prime.prime3_gui, bg = prime.none },

		-- Statusline
		StatusLineDull = { fg = prime.prime3_gui, bg = prime.prime1_gui },
		StatusLineAccent = { fg = prime.prime0_gui, bg = prime.prime13_gui },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },

		MiniCursorword = { bg = prime.prime3_gui },
		MiniCursorwordCurrent = { bg = prime.prime3_gui },

		MiniIndentscopeSymbol = { fg = prime.prime10_gui },
		MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

		MiniJump = { fg = prime.prime0_gui, bg = prime.prime4_gui },

		MiniJump2dSpot = { fg = prime.prime12_gui, style = "bold,nocombine" },

		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = prime.prime14_gui, style = italic },
		MiniStarterHeader = { fg = prime.prime9_gui },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = prime.prime4_gui },
		MiniStarterItemPrefix = { fg = prime.prime15_gui },
		MiniStarterSection = { fg = prime.prime4_gui },
		MiniStarterQuery = { fg = prime.prime10_gui },

		MiniStatuslineDevinfo = { fg = prime.prime4_gui, bg = prime.prime2_gui },
		MiniStatuslineFileinfo = { fg = prime.prime4_gui, bg = prime.prime2_gui },
		MiniStatuslineFilename = { fg = prime.prime4_gui, bg = prime.prime1_gui },
		MiniStatuslineInactive = { fg = prime.prime4_gui, bg = prime.prime0_gui, style = bold },
		MiniStatuslineModeCommand = { fg = prime.prime0_gui, bg = prime.prime15_gui, style = bold },
		MiniStatuslineModeInsert = { fg = prime.prime1_gui, bg = prime.prime4_gui, style = bold },
		MiniStatuslineModeNormal = { fg = prime.prime1_gui, bg = prime.prime9_gui, style = bold },
		MiniStatuslineModeOther = { fg = prime.prime0_gui, bg = prime.prime13_gui, style = bold },
		MiniStatuslineModeReplace = { fg = prime.prime0_gui, bg = prime.prime11_gui, style = bold },
		MiniStatuslineModeVisual = { fg = prime.prime0_gui, bg = prime.prime7_gui, style = bold },

		MiniSurround = { link = "IncSearch" },

		MiniTablineCurrent = { bg = prime.prime1_gui },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = prime.prime0_gui, fg = prime.prime3_gui },
		MiniTablineModifiedCurrent = { bg = prime.prime1_gui, fg = prime.prime15_gui },
		MiniTablineModifiedHidden = { bg = prime.prime0_gui, fg = prime.prime15_gui },
		MiniTablineModifiedVisible = { bg = prime.prime2_gui, fg = prime.prime15_gui },
		MiniTablineTabpagesection = { fg = prime.prime10_gui, bg = prime.prime6_gui, style = reverse_bold },
		MiniTablineVisible = { bg = prime.prime2_gui },

		MiniTestEmphasis = { style = bold },
		MiniTestFail = { fg = prime.prime11_gui, style = bold },
		MiniTestPass = { fg = prime.prime14_gui, style = bold },

		MiniTrailspace = { bg = prime.prime11_gui },

		-- Aerail
		AerialLine = { bg = prime.prime2_gui },
		AerialLineNC = { bg = prime.prime2_gui },

		AerialArrayIcon = { fg = prime.prime13_gui },
		AerialBooleanIcon = { fg = prime.prime9_gui, style = bold },
		AerialClassIcon = { fg = prime.prime9_gui },
		AerialConstantIcon = { fg = prime.prime13_gui },
		AerialConstructorIcon = { fg = prime.prime9_gui },
		AerialEnumIcon = { fg = prime.prime9_gui },
		AerialEnumMemberIcon = { fg = prime.prime4_gui },
		AerialEventIcon = { fg = prime.prime9_gui },
		AerialFieldIcon = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic } or { fg = prime.prime4_gui },
		AerialFileIcon = { fg = prime.prime14_gui },
		AerialFunctionIcon = vim.g.prime_italic and { fg = prime.prime8_gui, style = italic } or { fg = prime.prime8_gui },
		AerialInterfaceIcon = { fg = prime.prime9_gui },
		AerialKeyIcon = { fg = prime.prime9_gui },
		AerialMethodIcon = vim.g.prime_italic and { fg = prime.prime7_gui, style = italic } or { fg = prime.prime7_gui },
		AerialModuleIcon = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic } or { fg = prime.prime4_gui },
		AerialNamespaceIcon = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic }
			or { fg = prime.prime4_gui },
		AerialNullIcon = { fg = prime.prime9_gui },
		AerialNumberIcon = { fg = prime.prime15_gui },
		AerialObjectIcon = { fg = prime.prime9_gui },
		AerialOperatorIcon = { fg = prime.prime9_gui },
		AerialPackageIcon = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic } or { fg = prime.prime4_gui },
		AerialPropertyIcon = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic }
			or { fg = prime.prime10_gui },
		AerialStringIcon = vim.g.prime_italic and { fg = prime.prime14_gui, style = italic } or { fg = prime.prime14_gui },
		AerialStructIcon = { fg = prime.prime9_gui },
		AerialTypeParameterIcon = { fg = prime.prime10_gui },
		AerialVariableIcon = { fg = prime.prime4_gui, style = bold },

		AerialArray = { fg = prime.prime13_gui },
		AerialBoolean = { fg = prime.prime9_gui, style = bold },
		AerialClass = { fg = prime.prime9_gui },
		AerialConstant = { fg = prime.prime13_gui },
		AerialConstructor = { fg = prime.prime9_gui },
		AerialEnum = { fg = prime.prime9_gui },
		AerialEnumMember = { fg = prime.prime4_gui },
		AerialEvent = { fg = prime.prime9_gui },
		AerialField = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic } or { fg = prime.prime4_gui },
		AerialFile = { fg = prime.prime14_gui },
		AerialFunction = vim.g.prime_italic and { fg = prime.prime8_gui, style = italic } or { fg = prime.prime8_gui },
		AerialInterface = { fg = prime.prime9_gui },
		AerialKey = { fg = prime.prime9_gui },
		AerialMethod = vim.g.prime_italic and { fg = prime.prime7_gui, style = italic } or { fg = prime.prime7_gui },
		AerialModule = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic } or { fg = prime.prime4_gui },
		AerialNamespace = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic } or { fg = prime.prime4_gui },
		AerialNull = { fg = prime.prime9_gui },
		AerialNumber = { fg = prime.prime15_gui },
		AerialObject = { fg = prime.prime9_gui },
		AerialOperator = { fg = prime.prime9_gui },
		AerialPackage = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic } or { fg = prime.prime4_gui },
		AerialProperty = vim.g.prime_italic and { fg = prime.prime4_gui, style = italic } or { fg = prime.prime10_gui },
		AerialString = vim.g.prime_italic and { fg = prime.prime14_gui, style = italic } or { fg = prime.prime14_gui },
		AerialStruct = { fg = prime.prime9_gui },
		AerialTypeParameter = { fg = prime.prime10_gui },
		AerialVariable = { fg = prime.prime4_gui, style = bold },

		-- nvim-navic
		NavicIconsArray = { fg = prime.prime13_gui },
		NavicIconsBoolean = { fg = prime.prime9_gui, style = bold },
		NavicIconsClass = { fg = prime.prime9_gui },
		NavicIconsConstant = { fg = prime.prime13_gui },
		NavicIconsConstructor = { fg = prime.prime9_gui },
		NavicIconsEnum = { fg = prime.prime9_gui },
		NavicIconsEnumMember = { fg = prime.prime4_gui },
		NavicIconsEvent = { fg = prime.prime9_gui },
		NavicIconsField = { fg = prime.prime4_gui, style = italic },
		NavicIconsFile = { fg = prime.prime14_gui },
		NavicIconsFunction = { fg = prime.prime8_gui, style = italic },
		NavicIconsInterface = { fg = prime.prime9_gui },
		NavicIconsKey = { fg = prime.prime9_gui },
		NavicIconsMethod = { fg = prime.prime7_gui, style = italic },
		NavicIconsModule = { fg = prime.prime4_gui, style = italic },
		NavicIconsNamespace = { fg = prime.prime4_gui, style = italic },
		NavicIconsNull = { fg = prime.prime9_gui },
		NavicIconsNumber = { fg = prime.prime15_gui },
		NavicIconsObject = { fg = prime.prime9_gui },
		NavicIconsOperator = { fg = prime.prime9_gui },
		NavicIconsPackage = { fg = prime.prime4_gui, style = italic },
		NavicIconsProperty = { fg = prime.prime4_gui, style = italic },
		NavicIconsString = { fg = prime.prime14_gui, style = italic },
		NavicIconsStruct = { fg = prime.prime9_gui },
		NavicIconsTypeParameter = { fg = prime.prime10_gui },
		NavicIconsVariable = { fg = prime.prime4_gui, style = bold },
		NavicText = { fg = prime.prime4_gui },
		NavicSeparator = { fg = prime.prime4_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.prime_disable_background then
		plugins.NvimTreeNormal = { fg = prime.prime4_gui, bg = prime.none }
	else
		plugins.NvimTreeNormal = { fg = prime.prime4_gui, bg = prime.sidebar }
	end

	if vim.g.prime_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = prime.prime4_gui, bg = prime.sidebar }
	else
		plugins.NvimTreeNormal = { fg = prime.prime4_gui, bg = prime.none }
	end

	return plugins
end

return theme

-- colors/colorscheme.lua

local colors = {
	-- content here will not be touched
	-- PATCH_OPEN
	Normal = { fg = "#C4C5E9", bg = "None" },
	Boolean = { fg = "#765673" },
	Character = { fg = "#C4C5E9" },
	Comment = { fg = "#624E6E", italic = true },
	Conditional = { fg = "#B440D4" },
	Constant = { fg = "#B657FF" },
	CursorLine = { bg = "#18193F" },
	CursorLineNr = { fg = "#9B88E2" },
	Define = { fg = "#765674" },
	EndOfBuffer = { fg = "#FA9EBD" },
	Exception = { fg = "#B440D4" },
	Float = { fg = "#F25AE5" },
	Function = { fg = "#E39CBE" },
	Identifier = { fg = "#E0E0E0" },
	Include = { fg = "#765674" },
	Keyword = { fg = "#B440D4" },
	Label = { fg = "#B440D4" },
	LineNr = { fg = "#FA9EBD" },
	Macro = { fg = "#765674" },
	NormalFloat = { fg = "#C4C5E9", bg = "None" },
	Number = { fg = "#F25AE5" },
	Operator = { fg = "#B440D4" },
	PreCondit = { fg = "#765674" },
	PreProc = { fg = "#765674" },
	Repeat = { fg = "#B440D4" },
	Search = { fg = "#333333", bg = "#FFE894" },
	SignColumn = { bg = "None" },
	Special = {},
	Statement = { fg = "#B440D4" },
	StatusLine = { fg = "#FFFFFF", bg = "None" },
	StorageClass = { fg = "#8E95F0" },
	String = { fg = "#F5B2F0" },
	Structure = { fg = "#8E95F0" },
	TermCursor = { fg = "#FFFFFF" },
	Type = { fg = "#8E95F0" },
	Typedef = { fg = "#8E95F0" },
	Visual = { fg = "#22740B", bg = "#9B88E2" },
	["@function"] = { fg = "#F5B2F0" },
	["@keyword"] = { fg = "#8E6EA6" },
	["@parameter"] = { fg = "#E0CFED" },
	["@storageclass"] = { fg = "#B657FF" },
	["@tag"] = { fg = "#A39EFA" },
	["@type.definition"] = { fg = "#A39EFA" },
	["@variable"] = { fg = "#FDFDF7" },
	-- PATCH_CLOSE
	-- content here will not be touched
}

-- colorschemes generally want to do this
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='lillilac'")

-- apply highlight groups
for group, attrs in pairs(colors) do
	vim.api.nvim_set_hl(0, group, attrs)
end

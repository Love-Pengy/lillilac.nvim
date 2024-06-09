-- colors/colorscheme.lua

local colors = {
	-- content here will not be touched
	-- PATCH_OPEN
Normal = {fg = "#C4C5E9", bg = "None"},
Boolean = {fg = "#765673"},
Character = {fg = "#C4C5E9"},
Comment = {fg = "#624E6E", italic = true},
Conditional = {fg = "#B440D4"},
Constant = {fg = "#B657FF"},
CursorLine = {bg = "#18193F"},
CursorLineNr = {fg = "#9B88E2"},
Define = {fg = "#765674"},
DiagnosticError = {fg = "#FF1A00"},
DiagnosticFloatingError = {fg = "#FF1A00"},
DiagnosticFloatingHint = {fg = "#9ED8FF"},
DiagnosticFloatingInfo = {fg = "#85EFEF"},
DiagnosticFloatingOk = {fg = "#ABEDB8"},
DiagnosticFloatingWarn = {fg = "#E5E619"},
DiagnosticHint = {fg = "#9ED8FF"},
DiagnosticInfo = {fg = "#85EFEF"},
DiagnosticOk = {fg = "#ABEDB8"},
DiagnosticSignError = {fg = "#FF1A00"},
DiagnosticSignHint = {fg = "#9ED8FF"},
DiagnosticSignInfo = {fg = "#85EFEF"},
DiagnosticSignOk = {fg = "#ABEDB8"},
DiagnosticSignWarn = {fg = "#E5E619"},
DiagnosticVirtualTextError = {fg = "#FF1A00"},
DiagnosticVirtualTextHint = {fg = "#9ED8FF"},
DiagnosticVirtualTextInfo = {fg = "#85EFEF"},
DiagnosticVirtualTextOk = {fg = "#ABEDB8"},
DiagnosticVirtualTextWarn = {fg = "#E5E619"},
DiagnosticWarn = {fg = "#E5E619"},
EndOfBuffer = {fg = "#FA9EBD"},
Exception = {fg = "#B440D4"},
Float = {fg = "#F25AE5"},
Function = {fg = "#E39CBE"},
Identifier = {fg = "#E0E0E0"},
Include = {fg = "#765674"},
Keyword = {fg = "#B440D4"},
Label = {fg = "#B440D4"},
LineNr = {fg = "#FA9EBD"},
Macro = {fg = "#765674"},
NormalFloat = {fg = "#C4C5E9", bg = "None"},
Number = {fg = "#F25AE5"},
Operator = {fg = "#B440D4"},
PreCondit = {fg = "#765674"},
PreProc = {fg = "#765674"},
Repeat = {fg = "#B440D4"},
Search = {fg = "#333333", bg = "#FFE894"},
SignColumn = {bg = "None"},
Special = {},
Statement = {fg = "#B440D4"},
StatusLine = {fg = "#FFFFFF", bg = "None"},
StorageClass = {fg = "#8E95F0"},
String = {fg = "#F5B2F0"},
Structure = {fg = "#8E95F0"},
TermCursor = {fg = "#FFFFFF"},
Type = {fg = "#8E95F0"},
Typedef = {fg = "#8E95F0"},
Visual = {fg = "#22740B", bg = "#9B88E2"},
["@character"] = {fg = "#C4C5E9"},
["@conditional"] = {fg = "#B440D4"},
["@constant"] = {fg = "#B657FF"},
["@constant.builtin"] = {fg = "#B657FF"},
["@constant.macro"] = {fg = "#B657FF"},
["@define"] = {fg = "#765674"},
["@exception"] = {fg = "#B440D4"},
["@field"] = {fg = "#E0E0E0"},
["@function"] = {fg = "#E39CBE"},
["@function.builtin"] = {fg = "#E39CBE"},
["@function.macro"] = {fg = "#E39CBE"},
["@include"] = {fg = "#765674"},
["@keyword"] = {fg = "#B440D4"},
["@label"] = {fg = "#B440D4"},
["@macro"] = {fg = "#765674"},
["@method"] = {fg = "#E39CBE"},
["@namespace"] = {fg = "#765674"},
["@number"] = {fg = "#F25AE5"},
["@operator"] = {fg = "#B440D4"},
["@parameter"] = {fg = "#E0E0E0"},
["@preproc"] = {fg = "#765674"},
["@property"] = {fg = "#E0E0E0"},
["@repeat"] = {fg = "#B440D4"},
["@storageclass"] = {fg = "#8E95F0"},
["@string"] = {fg = "#F5B2F0"},
["@structure"] = {fg = "#8E95F0"},
["@tag"] = {fg = "#A39EFA"},
["@type"] = {fg = "#8E95F0"},
["@type.builtin"] = {fg = "#8E95F0"},
["@type.definition"] = {fg = "#8E95F0"},
["@variable"] = {fg = "#E0E0E0"},
	-- PATCH_CLOSE
	-- content here will not be touched
}

-- colorschemes generally want to do this
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='lillilac'")
--[[
vim.api.nvim_set_hl(0, "DiagnosticErrorLn", { bg = "#330000" })
vim.api.nvim_set_hl(0, "DiagnosticWarningLn", { bg = "#727212" })
vim.api.nvim_set_hl(0, "DiagnosticInfoLn", { bg = "#00afaf" })
vim.api.nvim_set_hl(0, "DiagnosticHintLn", { bg = "#00af00" })
--]]
-- apply highlight groups
for group, attrs in pairs(colors) do
	vim.api.nvim_set_hl(0, group, attrs)
end

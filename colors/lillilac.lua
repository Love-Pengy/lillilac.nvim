local Color0 = '#614e6e'
local Color1 = '#f5b0ef'
local Color2 = '#f25ae6'
local Color3 = '#b657ff'
local Color4 = '#8e6da6'
local Color5 = '#664e4d'
local Color6 = '#cf433e'
local Color7 = '#9D89E2'
local Color8 = '#000000'
local Color9 = '#e0ceed'
local Color10 = '#080709'
local Color11 = '#42215b'
local Color12 = '#3b3442'
local Color13 = '#121014'
local Color14 = '#6e607c'
local Color15 = '#A29DFA'

local colors = {
  Comment = { fg = Color0 },
  String = { fg = Color1 },
  Number = { fg = Color2 },
  TSCharacter = { fg = Color3 },
  Keyword = { fg = Color3 },
  Type = { fg = Color3 },
  Function = { fg = Color1 },
  Error = { bg = Color5, fg = Color6 },
  StatusLine = { bg = Color8, fg = Color7 },
  WildMenu = { bg = Color10, fg = Color9 },
  Pmenu = { bg = Color10, fg = Color9 },
  PmenuSel = { fg = Color9 },
  PmenuThumb = { bg = Color10, fg = Color9 },
  Normal = { bg = Color10, fg = Color9 },
  Visual = { bg = "#3a2447" },
  CursorLine = { bg = "#200f24" },
  ColorColumn = { fg = Color11 },
  SignColumn = { fg = Color10 },
  LineNr = { bg = "#030303", fg = Color12 },
  TabLine = { bg = Color13, fg = Color14 },
  TabLineFill = { bg = Color13, fg = Color14 },
  TSPunctDelimiter = { fg = Color9 },
  Constant = { fg = Color9 },
  Special = { fg = Color9 },
  Operator = { fg = Color4 },
  PreProc = { fg = Color1 },
  Identifier = { fg = Color9 },

  -- Semantic Tokens
  ["@variable"] = { fg = Color9 },

  -- c
  ["@type.builtin.c"] = { fg = Color15 },
  ["@string.escape.c"] = { fg = Color3 },
  ["@character.c"] = { fg = Color1 },
  ["@keyword.directive.define.c"] = { fg = Color4 },
  ["@keyword.repeat.c"] = { fg = Color4 },
  ["@keyword.return.c"] = { fg = Color4 },
  ["@keyword.type.c"] = { fg = Color15 },
  ["@lsp.type.class.c"] = { fg = Color9 },
  -- ["@lsp.typemod.class.globalScope.c"] = {fg = Color15},
  ["@lsp.mod.defaultLibrary.c"] = { fg = Color15 },
  ["@lsp.typemod.function.defaultLibrary.c"] = { fg = Color1 },
  ["@lsp.typemod.macro.declaration.c"] = { fg = Color1 },
}


-- colorschemes generally want to do this
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='lillilac'")

-- apply highlight groups
vim.o.background = "dark"
vim.o.termguicolors = true
for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end

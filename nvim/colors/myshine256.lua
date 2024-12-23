-- derived from
-- https://github.com/neovim/neovim/blob/master/runtime/colors/shine.vim
-- license: Same as Vim
-- ported to lua
-- 256 colors only

vim.g.colors_name = 'myshine256'
vim.cmd.highlight 'clear'
vim.o.background = 'light'

local link = {
  'link Terminal Normal',
  'link LineNrAbove LineNr',
  'link LineNrBelow LineNr',
  'link CurSearch Search',
  'link CursorLineFold CursorLine',
  'link CursorLineSign CursorLine',
  'link EndOfBuffer NonText',
  'link ErrorMsg Error',
  'link Tag Special',
  'link Operator Statement',
  'link MessageWindow Pmenu',
  'link PopupNotification Todo',
}

-- set link
for i, v in pairs(link) do
  vim.cmd.highlight(v)
end

-- local color = {
--   Black = 16,
--   DarkGrey = 243,
--   MediumGrey = 248,
--   LightGrey = 253,
--   White = 231,
--   Cyan = 51,
--   Magenta = 201,
--   Red = 196,
--   Yellow = 226,
--   SeaGreen = 29,
--   DarkBlue = 18,
--   DarkCyan = 30,
--   DarkGreen = 22,
--   DarkOrange = 208,
--   DarkRed = 88,
--   LightBlue = 153,
--   LightGreen = 120,
--   LightMagenta = 213,
--   LightRed = 217,
--   MutedRed = 95,
--   MutedYellow = 228,
--   Purple = 55,
--   bgDiffA = 65,
--   bgDiffC = 67,
--   bgDiffD = 133,
--   bgDiffT = 251,
--   fgDiffW = 231,
--   fgDiffB = 16,
--   bgDiffC8 = 67,
--   bgDiffD8 = 133,
-- }

local highlight = {
  Normal = { ctermfg = 16, ctermbg = 231, cterm = NONE },
  Folded = { ctermfg = 18, ctermbg = 253, cterm = NONE },
  CursorLine = { ctermfg = NONE, ctermbg = 253, cterm = NONE },
  CursorColumn = { ctermfg = NONE, ctermbg = 253, cterm = NONE },
  CursorLineNr = { ctermfg = NONE, ctermbg = 253, cterm = NONE },
  QuickFixLine = { ctermfg = 16, ctermbg = 208, cterm = NONE },
  StatusLine = { ctermfg = 231, ctermbg = 16, cterm = bold },
  StatusLineNC = { ctermfg = 231, ctermbg = 248, cterm = NONE },
  StatusLineTerm = { ctermfg = 16, ctermbg = 120, cterm = bold },
  StatusLineTermNC = { ctermfg = 253, ctermbg = 22, cterm = NONE },
  VertSplit = { ctermfg = 248, ctermbg = 248, cterm = NONE },
  Pmenu = { ctermfg = 16, ctermbg = 248, cterm = NONE },
  PmenuSel = { ctermfg = 16, ctermbg = 228, cterm = NONE },
  PmenuSbar = { ctermfg = 231, ctermbg = 231, cterm = NONE },
  PmenuThumb = { ctermfg = 243, ctermbg = 243, cterm = NONE },
  TabLine = { ctermfg = 16, ctermbg = 253, cterm = underline },
  TabLineFill = { ctermfg = NONE, ctermbg = NONE, cterm = reverse },
  TabLineSel = { ctermfg = 16, ctermbg = 231, cterm = bold },
  ToolbarLine = { ctermfg = NONE, ctermbg = NONE, cterm = NONE },
  ToolbarButton = { ctermfg = NONE, ctermbg = 248, cterm = bold },
  NonText = { ctermfg = 153, ctermbg = 231, cterm = NONE },
  SpecialKey = { ctermfg = 153, ctermbg = NONE, cterm = NONE },
  Visual = { ctermfg = 16, ctermbg = 248, cterm = NONE },
  VisualNOS = { ctermfg = NONE, ctermbg = NONE, cterm = underline },
  LineNr = { ctermfg = 243, ctermbg = NONE, cterm = NONE },
  FoldColumn = { ctermfg = 243, ctermbg = NONE, cterm = NONE },
  SignColumn = { ctermfg = NONE, ctermbg = NONE, cterm = NONE },
  Underlined = { ctermfg = 55, ctermbg = NONE, cterm = underline },
  Error = { ctermfg = 196, ctermbg = 231, cterm = reverse },
  WarningMsg = { ctermfg = 55, ctermbg = 231, cterm = NONE },
  MoreMsg = { ctermfg = 22, ctermbg = 231, cterm = NONE },
  ModeMsg = { ctermfg = 16, ctermbg = 231, cterm = NONE },
  Question = { ctermfg = 95, ctermbg = NONE, cterm = NONE },
  Todo = { ctermfg = 16, ctermbg = 226, cterm = NONE },
  --  MatchParen = { ctermfg = 231, ctermbg = 217, cterm = NONE },
  MatchParen = { ctermfg = 255, ctermbg = 251, cterm = NONE },
  Search = { ctermfg = 231, ctermbg = 55, cterm = NONE },
  IncSearch = { ctermfg = 30, ctermbg = 226, cterm = reverse },
  WildMenu = { ctermfg = 16, ctermbg = 226, cterm = bold },
  ColorColumn = { ctermfg = 16, ctermbg = 217, cterm = NONE },
  Cursor = { ctermfg = 231, ctermbg = 16, cterm = NONE },
  lCursor = { ctermfg = 16, ctermbg = 95, cterm = NONE },
  SpellBad = { ctermfg = 196, ctermbg = NONE, cterm = underline },
  SpellCap = { ctermfg = 29, ctermbg = NONE, cterm = underline },
  SpellLocal = { ctermfg = 201, ctermbg = NONE, cterm = underline },
  SpellRare = { ctermfg = 18, ctermbg = NONE, cterm = underline },
  Statement = { ctermfg = 29, ctermbg = NONE, cterm = bold },
  Type = { ctermfg = 29, ctermbg = NONE, cterm = bold },
  Comment = { ctermfg = 248, ctermbg = NONE, cterm = NONE },
  StorageClass = { ctermfg = 196, ctermbg = NONE, cterm = bold },
  Conceal = { ctermfg = 253, ctermbg = 243, cterm = NONE },
  Identifier = { ctermfg = 30, ctermbg = NONE, cterm = NONE },
  Constant = { ctermfg = 95, ctermbg = NONE, cterm = NONE },
  Number = { ctermfg = 95, ctermbg = NONE, cterm = bold },
  Float = { ctermfg = 95, ctermbg = NONE, cterm = bold },
  PreProc = { ctermfg = 55, ctermbg = NONE, cterm = NONE },
  Special = { ctermfg = 208, ctermbg = NONE, cterm = NONE },
  SpecialChar = { ctermfg = 18, ctermbg = NONE, cterm = NONE },
  Directory = { ctermfg = 30, ctermbg = NONE, cterm = bold },
  Ignore = { ctermfg = NONE, ctermbg = NONE, cterm = NONE },
  Title = { ctermfg = 22, ctermbg = NONE, cterm = bold },
  DiffAdd = { ctermfg = 231, ctermbg = 65, cterm = NONE },
  DiffChange = { ctermfg = 231, ctermbg = 67, cterm = NONE },
  DiffText = { ctermfg = 16, ctermbg = 251, cterm = NONE },
  DiffDelete = { ctermfg = 231, ctermbg = 133, cterm = NONE },
}

-- set highlight
for name, val in pairs(highlight) do
  vim.api.nvim_set_hl(0, name, val)
end

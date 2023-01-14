-- derived from
-- https://github.com/altercation/vim-colors-solarized
-- ported to lua
-- 256 colors only

vim.g.colors_name = 'mysolarized256'
vim.cmd.highlight 'clear'
vim.o.background = 'light'

-- dark
local dark = {
  none = NONE,
  base03 = 234,
  base02 = 235,
  base01 = 239,
  base00 = 240,
  base0 = 244,
  base1 = 245,
  base2 = 187,
  base3 = 230,
  yellow = 136,
  orange = 166,
  red = 124,
  magenta = 125,
  violet = 61,
  blue = 33,
  cyan = 37,
  green = 64,
  back = 234,
}

-- light
local light = {
  none = NONE,
  base3 = 234,
  base2 = 235,
  base1 = 239,
  base0 = 240,
  base00 = 244,
  base01 = 245,
  base02 = 187,
  base03 = 230,
  yellow = 136,
  orange = 166,
  red = 124,
  magenta = 125,
  violet = 61,
  blue = 33,
  cyan = 37,
  green = 64,
  back = 230,
}

-- light high
local highl = {
  none = NONE,
  base3 = 234,
  base2 = 234,
  base1 = 234,
  base0 = 239,
  base00 = 240,
  base01 = 244,
  base02 = 187,
  base03 = 230,
  yellow = 136,
  orange = 166,
  red = 124,
  magenta = 125,
  violet = 61,
  blue = 33,
  cyan = 37,
  green = 64,
  back = 230,
}

-- color
local c = highl

-- format
local f = {
  none = NONE,
  bold = bold,
  underline = underline,
  underlinebold = { underline, bold },
  undercurl = undercurl,
  underdouble = underdouble,
  underdotted = underdotted,
  underdashed = underdashed,
  strikethrough = strikethrough,
  reverse = reverse,
  revbold = { reverse, bold },
  revstand = { reverse, standout },
  revunderline = { reverse, underline },
  revboldstand = { reverse, bold, standout },
  inverse = inverse,
  italic = italic,
  standout = standout,
  nocomine = nocombine,
}

local highlight = {
  Normal = { ctermfg = c.base0, ctermbg = c.back, cterm = f.none },
  Comment = { ctermfg = c.base01, ctermbg = c.none, cterm = f.italic },
  Constant = { ctermfg = c.cyan, ctermbg = c.none, cterm = f.none },
  Identifier = { ctermfg = c.blue, ctermbg = c.none, cterm = f.none },
  Statement = { ctermfg = c.green, ctermbg = c.none, cterm = f.none },
  PreProc = { ctermfg = c.orange, ctermbg = c.none, cterm = f.none },
  Type = { ctermfg = c.yellow, ctermbg = c.none, cterm = f.none },
  Special = { ctermfg = c.red, ctermbg = c.none, cterm = f.none },
  Underlined = { ctermfg = c.violet, ctermbg = c.none, cterm = f.none },
  Ignore = { ctermfg = c.none, ctermbg = c.none, cterm = f.none },
  Error = { ctermfg = c.red, ctermbg = c.none, cterm = f.bold },
  Todo = { ctermfg = c.magenta, ctermbg = c.none, cterm = f.bold },
  -- high
  SpecialKey = { ctermfg = c.red, ctermbg = c.none, cterm = f.reverse },
  NonText = { ctermfg = c.red, ctermbg = c.none, cterm = f.bold },
  -- ^^ high
  StatusLine = { ctermfg = c.base1, ctermbg = c.base02, cterm = f.reverse },
  StatusLineNC = { ctermfg = c.base00, ctermbg = c.base02, cterm = f.reverse },
  Visual = { ctermfg = c.base01, ctermbg = c.base03, cterm = f.reverse },
  Directory = { ctermfg = c.blue, ctermbg = c.nnone, cterm = f.none },
  ErrorMsg = { ctermfg = c.red, ctermbg = c.none, cterm = f.reverse },
  IncSearch = { ctermfg = c.orange, ctermbg = c.none, cterm = f.standout },
  Search = { ctermfg = c.yellow, ctermbg = c.none, cterm = f.reverse },
  MoreMsg = { ctermfg = c.blue, ctermbg = c.none, cterm = f.none },
  ModeMsg = { ctermfg = c.blue, ctermbg = c.none, cterm = f.none },
  LineNr = { ctermfg = c.base01, ctermbg = c.base02, cterm = f.none },
  Question = { ctermfg = c.cyan, ctermbg = c.none, cterm = f.bold },
  VertSplit = { ctermfg = c.base00, ctermbg = c.base00, cterm = f.none },
  Title = { ctermfg = c.orange, ctermbg = c.none, cterm = f.bold },
  VisualNOS = { ctermfg = c.none, ctermbg = c.base02, cterm = f.revstand },
  WarningMsg = { ctermfg = c.red, ctermbg = c.none, cterm = f.bold },
  WildMenu = { ctermfg = c.base02, ctermbg = c.base02, cterm = f.reverse },
  Folded = { ctermfg = c.base0, ctermbg = c.base02, cterm = f.underlinebold },
  FoldColumn = { ctermfg = c.base0, ctermbg = c.base02, cterm = f.none },
  -- high
  DiffAdd = { ctermfg = c.green, ctermbg = c.none, cterm = f.reverse },
  DiffChange = { ctermfg = c.yellow, ctermbg = c.none, cterm = f.reverse },
  DiffText = { ctermfg = c.red, ctermbg = c.none, cterm = f.reverse },
  DiffDelete = { ctermfg = c.blue, ctermbg = c.none, cterm = f.reverse },
  -- ^^ high
  SignColumn = { ctermfg = c.none, cterm = f.none },
  Conceal = { ctermfg = c.blue, ctermbg = c.none, cterm = f.none },
  SpellBad = { ctermfg = c.none, ctermbg = c.none, cterm = f.undercurl },
  SpellCap = { ctermfg = c.none, ctermbg = c.none, cterm = f.undercurl },
  SpellRare = { ctermfg = c.none, ctermbg = c.none, cterm = f.undercurl },
  SpellLocal = { ctermfg = c.none, ctermbg = c.none, cterm = f.undercurl },
  Pmenu = { ctermfg = c.base0, ctermbg = c.base02, cterm = f.reverse },
  PmenuSel = { ctermfg = c.base01, ctermbg = c.base2, cterm = f.reverse },
  PmenuSbar = { ctermfg = c.base2, ctermbg = c.base0, cterm = f.reverse },
  PmenuThumb = { ctermfg = c.base0, ctermbg = c.base03, cterm = f.reverse },
  TabLine = { ctermfg = c.base0, ctermbg = c.base02, cterm = f.underline },
  TabLineFill = { ctermfg = c.base0, ctermbg = c.base02, cterm = f.underline },
  TabLineSel = { ctermfg = c.base01, ctermbg = c.base2, cterm = f.revunderline },
  CursorColumn = { ctermfg = c.none, ctermbg = c.base02, cterm = f.none },
  CursorLine = { ctermfg = c.none, ctermbg = c.base02, cterm = f.none },
  ColorColumn = { ctermfg = c.none, ctermbg = c.base02, cterm = f.none },
  Cursor = { ctermfg = c.base03, ctermbg = c.base0, cterm = f.none },
  MatchParen = { ctermfg = c.red, ctermbg = c.base01, cterm = f.bold },
}

--  CursorLineNr = { ctermfg = NONE, ctermbg = 253, cterm = NONE },
--  QuickFixLine = { ctermfg = 16, ctermbg = 208, cterm = NONE },
--  StatusLineTerm = { ctermfg = 16, ctermbg = 120, cterm = bold },
--  StatusLineTermNC = { ctermfg = 253, ctermbg = 22, cterm = NONE },
--  ToolbarLine = { ctermfg = NONE, ctermbg = NONE, cterm = NONE },
--  ToolbarButton = { ctermfg = NONE, ctermbg = 248, cterm = bold },
--  StorageClass = { ctermfg = 196, ctermbg = NONE, cterm = bold },
--  Number = { ctermfg = 95, ctermbg = NONE, cterm = bold },
--  Float = { ctermfg = 95, ctermbg = NONE, cterm = bold },
--  SpecialChar = { ctermfg = 18, ctermbg = NONE, cterm = NONE },

-- set highlight
for name, val in pairs(highlight) do
  vim.api.nvim_set_hl(0, name, val)
end

local link = {
  'link lCursor Cursor',
}

-- set link
for i, v in pairs(link) do
  vim.cmd.highlight(v)
end

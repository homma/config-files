-- gui font
-- vim.opt.guifont = 'Menlo:h12'
-- vim.opt.guifontwide = 'Menlo:h12'

-- cursor shape
vim.opt.guicursor = 'a:block'

-- window
vim.opt.splitright = true

-- color scheme
vim.cmd.colorscheme 'myshine256'
-- vim.cmd.colorscheme 'mysolarized256'
-- vim.cmd.colorscheme 'shine'
-- vim.opt.termguicolors = false

-- clipboard
-- use OS clipboard with y and p
vim.opt.clipboard = 'unnamedplus'

-- disable status line
vim.opt.laststatus = 0

-- highlight search
vim.opt.hlsearch = true
vim.opt.ignorecase = true

-- disable autoindent
vim.cmd.filetype 'plugin indent off'
-- vim.cmd.filetype 'off'
-- vim.cmd.filetype 'indent off'
-- vim.bo.autoindent = off
vim.bo.autoindent = false
-- below settings did not work
-- vim.g.did_indent_on = 1
-- vim.b.did_indent = 1
-- vim.opt.autoindent = off
-- vim.opt.smartindent = off
-- vim.opt.cindent = off
vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.cindent = false
-- vim.opt.indentexpr = ''
-- vim.opt.paste = true
-- vim.wo.breakindent = false
-- vim.bo.copyindent = false
-- vim.bo.smartindent = false

-- disable comment auto insertion
vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    vim.opt.formatoptions = ''
  end,
})
-- below settings did not work
-- vim.bo.formatoptions = ''
-- vim.cmd 'filetype off'

-- markdown
-- clear errors of underline like in foo_bar
vim.cmd.highlight 'link markdownError Normal'

-- dont need tabs
vim.opt.expandtab = true
vim.opt.tabstop = 1
vim.opt.shiftwidth = 1

-- keymap
-- `:help Ctrl-a` can be used to check the default keybind
-- `:help keycodes` to check possible inputs

local kopt = { noremap = true }

-- copy all
vim.keymap.set('n', '<C-a>', 'gg<S-v>Gy', kopt)

-- back to normal mode
-- cannot use <C-m> since it's 'return'
vim.keymap.set('i', '<C-j>', '<Esc>', kopt)
vim.keymap.set('v', '<C-j>', '<Esc>', kopt)

-- cannot map <C-CR> nor <S-CR>
-- vim.keymap.set('i', '<C-CR>', '<Home>', kopt)
-- vim.keymap.set('i', '<S-CR>', '<Home>', kopt)

-- emacs-like insert mode
---- move cursor ----
vim.keymap.set('i', '<C-a>', '<Home>', kopt)
vim.keymap.set('i', '<C-e>', '<End>', kopt)
vim.keymap.set('i', '<C-b>', '<Left>', kopt)
vim.keymap.set('i', '<C-f>', '<Right>', kopt)
vim.keymap.set('i', '<C-p>', '<Up>', kopt)
vim.keymap.set('i', '<C-n>', '<Down>', kopt)
-- <C-p> and <C-n> is completion in the default keybind
-- use <C-x><C-n> and <C-x><C-n> for completion
---- scroll ----
vim.keymap.set('i', '<C-l>', '<C-o>zz', kopt)
-- vim.keymap.set('i', '<C-l>', '<C-o>z.', kopt)
---- save ----
vim.keymap.set('i', '<C-s>', '<C-o>:write<CR>', kopt)
---- quit ----
vim.keymap.set('i', '<C-q>', '<C-o>:quit<CR>', kopt)
---- delete ----
vim.keymap.set('i', '<C-d>', '<Del>', kopt)
-- <C-d> is dedent in the default keybind
vim.keymap.set('i', '<C-k>', '<C-o>d$', kopt)
-- <C-k> is digraph in the default keybind

-- emacs-like commandline mode
vim.keymap.set('c', '<C-a>', '<Home>', kopt)
vim.keymap.set('c', '<C-e>', '<End>', kopt)
vim.keymap.set('c', '<C-b>', '<Left>', kopt)
vim.keymap.set('c', '<C-f>', '<Right>', kopt)
vim.keymap.set('c', '<C-d>', '<Del>', kopt)
vim.keymap.set('c', '<C-k>', function()
  local str = vim.fn.getcmdline()
  local pos = vim.fn.getcmdpos() - 1
  local substr = str:sub(1, pos)
  vim.fn.setcmdline(substr)
end, kopt)

-- indent / dedent
-- '<' as <C-Char-60> does not work
-- vim.keymap.set('i', '<C-Char-60>', '<Down>', kopt)
-- vim.keymap.set('i', '<C-Char-62>', '<Down>', kopt)
-- vim.keymap.set('i', '<C-lt>', '<Down>', kopt)
-- vim.keymap.set('i', '<C-gt>', '<Down>', kopt)
-- <C-Tab> does not work since Tab is already C-i
-- vim.keymap.set('i', '<C-Tab>', '<Down>', kopt)
-- vim.keymap.set('i', '<C-S-Tab>', '<Down>', kopt)
-- <C-S-char> does not work
-- vim.keymap.set('i', '<C-Shift-t>', '<Down>', kopt)
-- vim.keymap.set('i', '<C-S-t>', '<Down>', kopt)
-- vim.keymap.set('i', '<C-Char-84>', '<Down>', kopt)

-- disable CTRL-@ (and use it as Esc)
-- in Neovim, <C-@> does not work
-- specify <C-space> instead
vim.keymap.set('i', '<C-space>', '<Esc>', kopt)

-- stop opening command line window with q:
-- use <C-f> in command line mode to open command line window
-- set Q for macro record
vim.keymap.set('n', 'Q', 'q', kopt)
-- set q for nop
vim.keymap.set('n', 'q', '<nop>', kopt)

-- utility
require 'encryption'

-- package
require("config.lazy")

-- nvim-tree
vim.api.nvim_create_user_command('Topen', 'NvimTreeOpen ~/MyProj', {})
vim.api.nvim_create_user_command('Tclose', 'NvimTreeClose', {})

-- less mode
local less = require 'less'
vim.api.nvim_create_user_command('Less', less.start_less, {})

-- site specific initialize script
-- pcall(require, 'site-init')

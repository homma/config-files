-- ToDo
-- disable Ctrl-@ behavior

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
vim.cmd.filetype 'indent off'
vim.bo.autoindent = false
-- below settings did not work
-- vim.g.did_indent_on = 1
-- vim.b.did_indent = 1
-- vim.opt.autoindent = false
-- vim.opt.smartindent = false
-- vim.opt.cindent = false
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
-- would like to disable CTRL-@
-- below settings did not work
-- vim.keymap.set('', '<C-@>', '<NOP>', {noremap = true})
-- vim.keymap.set('', '<CTRL-@>', '<NOP>', {noremap = true})
-- vim.keymap.set('', '<Nul>', '<NOP>', {noremap = true})
-- vim.keymap.set('', '<NUL>', '<NOP>', {noremap = true})
-- vim.keymap.set('i', '<CTRL>@', '<NOP>', {noremap = true})
-- vim.keymap.set('', '<CTRL>@', '<NOP>')
-- vim.keymap.set('i', '<nul>', '<nop>', {noremap = true})

-- stop opening command line window with q:
-- use <C-f> in command line mode to open command line window
-- set Q for macro record
vim.keymap.set('n', 'Q', 'q', { noremap = true })
-- set q for nop
vim.keymap.set('n', 'q', '<nop>', { noremap = true })

-- utility
require 'encryption'

-- package
require 'plugins'
require('nvim-tree').setup {
  renderer = {
    symlink_destination = false,
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
        modified = false,
      },
    },
  },
}

vim.api.nvim_create_user_command('Topen', 'NvimTreeOpen ~/MyProj', {})
vim.api.nvim_create_user_command('Tclose', 'NvimTreeClose', {})

-- site specific initialize script
-- pcall(require, 'site-init')

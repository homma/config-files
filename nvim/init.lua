-- gui font
-- vim.opt.guifont = 'Menlo:h12'
-- vim.opt.guifontwide = 'Menlo:h12'

-- window
vim.opt.splitright = true

-- colorshceme
-- vim.api.nvim_command [[colorscheme desert]]
-- vim.opt.termguicolors = false
vim.cmd 'colorscheme shine'

-- clipboard
-- use OS clipboard with y and p
vim.opt.clipboard = 'unnamedplus'

-- status line
-- do not show status line
vim.opt.laststatus = 0

-- search
-- highlight search
vim.opt.hlsearch = true
vim.opt.ignorecase = true

-- autoindent
-- below settings do not work
-- vim.g.did_indent_on = 1
-- vim.b.did_indent = 1
-- vim.opt.autoindent = false
-- vim.opt.smartindent = false
-- vim.opt.cindent = false
-- vim.opt.indentexpr = ''
-- vim.opt.paste = true

-- succeeded to disable autoindent with below
vim.cmd 'filetype indent off'
vim.bo.autoindent = false
-- vim.wo.breakindent = false
-- vim.bo.copyindent = false
-- vim.bo.smartindent = false

-- disable comment auto insertion
-- below does not work
-- vim.bo.formatoptions = ''
-- vim.cmd 'filetype off'
-- below does work
vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    vim.opt.formatoptions = ''
  end,
})

-- dont need tabs
vim.opt.expandtab = true
vim.opt.tabstop = 1
vim.opt.shiftwidth = 1

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

vim.api.nvim_create_user_command('TOpen', 'NvimTreeOpen ~/neovim', {})
vim.api.nvim_create_user_command('TClose', 'NvimTreeClose', {})

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
-- `:help Ctrl-a` can be used to check the default keybind

-- emacs-like insert mode
vim.keymap.set('i', '<C-a>', '<Home>', { noremap = true })
vim.keymap.set('i', '<C-e>', '<End>', { noremap = true })
vim.keymap.set('i', '<C-b>', '<Left>', { noremap = true })
vim.keymap.set('i', '<C-f>', '<Right>', { noremap = true })
vim.keymap.set('i', '<C-p>', '<Up>', { noremap = true })
vim.keymap.set('i', '<C-n>', '<Down>', { noremap = true })
vim.keymap.set('i', '<C-l>', '<C-o>zz', { noremap = true })
-- vim.keymap.set('i', '<C-l>', '<C-o>z.', { noremap = true })
vim.keymap.set('i', '<C-s>', '<C-o>:write<CR>', { noremap = true })
-- <C-p> and <C-n> is completion in the default keybind
-- use <C-x><C-n> and <C-x><C-n> for completion
vim.keymap.set('i', '<C-d>', '<Del>', { noremap = true })
-- <C-d> is dedent in the default keybind
vim.keymap.set('i', '<C-k>', '<C-o>d$', { noremap = true })
-- <C-k> is digraph in the default keybind

-- indent / dedent
-- '<' as <C-Char-60> does not work
-- vim.keymap.set('i', '<C-Char-60>', '<Down>', { noremap = true })
-- vim.keymap.set('i', '<C-Char-62>', '<Down>', { noremap = true })
-- vim.keymap.set('i', '<C-lt>', '<Down>', { noremap = true })
-- vim.keymap.set('i', '<C-gt>', '<Down>', { noremap = true })
-- <C-Tab> does not work since Tab is already C-i
-- vim.keymap.set('i', '<C-Tab>', '<Down>', { noremap = true })
-- vim.keymap.set('i', '<C-S-Tab>', '<Down>', { noremap = true })
-- <C-S-char> does not work
-- vim.keymap.set('i', '<C-Shift-t>', '<Down>', { noremap = true })
-- vim.keymap.set('i', '<C-S-t>', '<Down>', { noremap = true })
-- vim.keymap.set('i', '<C-Char-84>', '<Down>', { noremap = true })

-- disable CTRL-@ (and use it as Esc)
-- in Neovim, <C-@> does not work
-- specify <C-space> instead
vim.keymap.set('i', '<C-space>', '<Esc>', { noremap = true })

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
